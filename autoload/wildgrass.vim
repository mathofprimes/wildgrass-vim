function! wildgrass#configuration() 
    return {
        \ 'wildgrass_dark': get(g:, 'wildgrass_dark', 'sage'),
        \ 'wildgrass_light': get(g:, 'wildgrass_light', 'sage'),
        \ 'wildgrass_contrast': get(g:, 'wildgrass_contrast', 'medium')
        \ }
endfunction

function! wildgrass#generate_palette(dark, light, contrast)
    let rgb = {
        \ 'gray': [3.5, 5.0, 3.5],
        \ 'jade': [0.0, 5.0, 2.5],
        \ 'lime': [1.0, 5.0, 1.0],
        \ 'pear': [4.5, 5.0, 1.0],
        \ 'drab': [4.5, 5.0, 2.5],
        \ 'aqua': [2.5, 5.0, 4.5],
        \ 'sage': [2.5, 5.0, 2.5],
        \ 'teal': [1.0, 5.0, 4.5]
        \ }

    let palette = {
        \ 'none': 'NONE',
        \ 'bold': 'bold',
        \ 'italic': 'italic',
        \ 'reverse': 'reverse',
        \ 'underline': 'underline',
        \ 'undercurl': 'undercurl'
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
    
    for i in ['bg0', 'bg1', 'bg2', 'bg3']
        
        if &background ==# 'dark'
            let bg += 1
        elseif &background ==# 'light'
            let bg -= 1
        endif

        let r = printf('%02X', float2nr(bg * rgb_bg[0])) 
        let g = printf('%02X', float2nr(bg * rgb_bg[1]))
        let b = printf('%02X', float2nr(bg * rgb_bg[2]))
        
        let palette[i] = '#' . r . g . b
    endfor

    for j in ['fg0', 'fg1', 'fg2', 'fg3']
        
        if &background ==# 'dark'
            let fg += 1
        elseif &background ==# 'light'
            let fg -= 1
        endif

        let r = printf('%02X', float2nr(fg * rgb_fg[0]))
        let g = printf('%02X', float2nr(fg * rgb_fg[1]))
        let b = printf('%02X', float2nr(fg * rgb_fg[2]))
        
        let palette[j] = '#' . r . g . b
    endfor
    
    let syntax = {}
    let count_sn = 0

    for k in keys(rgb)
        exec 'let rgb_sn = rgb.' . k
        
        let r = printf('%02X', float2nr((sn + contrast_sn[count_sn]) * rgb_sn[0]))
        let g = printf('%02X', float2nr((sn + contrast_sn[count_sn]) * rgb_sn[1]))
        let b = printf('%02X', float2nr((sn + contrast_sn[count_sn]) * rgb_sn[2]))
        
        let count_sn += 1
        
        let palette[k] = '#' . r . g . b
    endfor
    
    return palette
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
