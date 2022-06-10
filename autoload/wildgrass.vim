function! wildgrass#configuration() 
    return {
        \ 'wildgrass_dark': get(g:, 'wildgrass_dark', 'sage'),
        \ 'wildgrass_light': get(g:, 'wildgrass_light', 'sage'),
        \ 'wildgrass_contrast': get(g:, 'wildgrass_contrast', 'medium')
        \ }
endfunction

function! wildgrass#generate_palette(dark, light, contrast)
    let rgb = {
        \ 'gray': [4, 5, 4],
        \ 'jade': [0, 5, 3],
        \ 'lime': [0, 5, 1],
        \ 'pear': [4, 5, 1],
        \ 'drab': [4, 5, 2],
        \ 'aqua': [2, 5, 4],
        \ 'sage': [2, 5, 3],
        \ 'teal': [1, 5, 4]
        \ }

    if a:contrast ==# 'soft'
        if &background ==# 'dark'
            let bg = 10
            let fg = 40
            let sn = 24
            let contrast_sn = [-4, 0, 2, 0, -2, -2, -2, 0]
        elseif &background ==# 'light'
            let bg = 40
            let fg = 10
            let sn = 27
            let contrast_sn = [4, 0, -2, 0, 2, 2, 2, 0]
        endif
    elseif a:contrast ==# 'medium'
        if &background ==# 'dark'
            let bg = 8
            let fg = 43
            let sn = 26
            let contrast_sn = [-6, 0, 4, 0, -4, -4, -4, 0]
        elseif &background ==# 'light'
            let bg = 43
            let fg = 8
            let sn = 25
            let contrast_sn = [6, 0, -4, 0, 4, 4, 4, 0]
        endif
    elseif a:contrast ==# 'hard'
        if &background ==# 'dark'
            let bg = 6
            let fg = 45
            let sn = 28
            let contrast_sn = [-8, 0, 6, 0, -6, -6, -6, 0]
        elseif &background ==# 'light'
            let bg = 45
            let fg = 6
            let sn = 23
            let contrast_sn = [8, 0, -6, 0, 6, 6, 6, 0]
        endif
    endif

    if &background ==# 'dark'
        exec 'let rgb_bg = rgb.' . a:dark 
        exec 'let rgb_fg = rgb.' . a:light
    elseif &background ==# 'light'
        exec 'let rgb_bg = rgb.' . a:light 
        exec 'let rgb_fg = rgb.' . a:dark
    endif
    
    let background = {}
    let foreground = {}
    
    for i in ['0', '1', '2', '3']
        
        if &background ==# 'dark'
            let bg += 1
            let fg -= 1 
        elseif &background ==# 'light'
            let bg -= 1
            let fg += 1
        endif

        let r_bg = printf('%02X', bg * rgb_bg[0]) 
        let g_bg = printf('%02X', bg * rgb_bg[1])
        let b_bg = printf('%02X', bg * rgb_bg[2])

        let r_fg = printf('%02X', fg * rgb_fg[0])
        let g_fg = printf('%02X', fg * rgb_fg[1])
        let b_fg = printf('%02X', fg * rgb_fg[2])
        
        let background['bg' . i] = '#' . r_bg . g_bg . b_bg
        let foreground['fg' . i] = '#' . r_fg . g_fg . b_fg
    endfor

    
    let syntax = {}
    let count_sn = 0

    for k in keys(rgb)
        exec 'let rgb_sn = rgb.' . k
        
        let r = printf('%02X', (sn + contrast_sn[count_sn]) * rgb_sn[0])
        let g = printf('%02X', (sn + contrast_sn[count_sn]) * rgb_sn[1])
        let b = printf('%02X', (sn + contrast_sn[count_sn]) * rgb_sn[2])
        
        let count_sn += 1
        
        let syntax[k] = '#' . r . g . b
    endfor
    
    let other = {
        \ 'none': 'NONE',
        \ 'bold': 'bold',
        \ 'italic': 'italic',
        \ 'reverse': 'reverse',
        \ 'underline': 'underline',
        \ 'undercurl': 'undercurl'
        \ }

    return extend(extend(background, foreground), extend(syntax, other))
endfunction

function! wildgrass#HL(group, gui, fgd, bgd, spl)
    exec 'hi' a:group
        \ 'cterm   = NONE'
        \ 'ctermfg = NONE'
        \ 'ctermbg = NONE'
        \ 'gui='   . a:gui
        \ 'guifg=' . a:fgd
        \ 'guibg=' . a:bgd
        \ 'guisp=' . a:spl
endfunction
