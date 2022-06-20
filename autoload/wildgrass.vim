" store user configuration in a dict to use later
function! wildgrass#configuration() 
    return {
        \ 'wildgrass_dark': get(g:, 'wildgrass_dark', 'pure'),
        \ 'wildgrass_light': get(g:, 'wildgrass_light', 'pure'),
        \ 'wildgrass_contrast': get(g:, 'wildgrass_contrast', 'medium')
        \ }
endfunction

" function which generates the correct palette based 
" on user dark, light, and contrast configurations
function! wildgrass#generate_palette(dark, light, contrast)
    " palette uses 8 colors with unique ratios of r:g:b; four
    " darker shades are used for the background in dark mode 
    " and foreground, and vice versa for light mode. Each color
    " is used for syntax, making a 4 + 4 + 8 = 16 color palette.

    " the colors' ratios stored in lists stored in a dict where
    " the key is an assigned name for the color.
    let rgb = {
        \ 'pure': [0.5, 5.0, 1.0],
        \ 'gray': [4.5, 5.0, 4.5],
        \ 'jade': [0.5, 5.0, 2.5],
        \ 'lime': [2.5, 5.0, 1.0],
        \ 'pear': [4.5, 5.0, 1.0],
        \ 'drab': [4.5, 5.0, 2.5],
        \ 'aqua': [2.5, 5.0, 4.5],
        \ 'sage': [2.5, 5.0, 2.5],
        \ 'teal': [1.0, 5.0, 4.5]
        \ }
    
    " this dict becomes the palette. we start with non-color
    " (special) syntax attributes then append colors to it
    let palette = {
        \ 'none': 'NONE',
        \ 'bold': 'bold',
        \ 'itlc': 'italic',
        \ 'rvrs': 'reverse',
        \ 'undl': 'underline',
        \ 'undc': 'undercurl'
        \ }

    " check contrast. bg is background colors, fg is foreground
    " colors, sn is syntax colors, and contrast_sn controls contrast
    " between syntax highlight groups. bg and fg swap when changing
    " between light and dark mode, and contrast between sn colors switches
    " (e.g. in dark mode comments are darker compared to other sn colors to 
    " stand out less, but brighter in light mode)
    if a:contrast ==# 'soft'
        if &background ==# 'dark'
            let bg = 10 
            let fg = 40
            let sn = 24
            let contrast_sn = [0, -4, 0, 2, 0, -2, -2, -2, 0]
        elseif &background ==# 'light'
            let bg = 40
            let fg = 10
            let sn = 27
            let contrast_sn = [0, 4, 0, -2, 0, 2, 2, 2, 0]
        endif
    elseif a:contrast ==# 'medium'
        if &background ==# 'dark'
            let bg = 8
            let fg = 43
            let sn = 26
            let contrast_sn = [0, -6, 0, 4, 0, -4, -4, -4, 0]
        elseif &background ==# 'light'
            let bg = 43
            let fg = 8
            let sn = 25
            let contrast_sn = [0, 6, 0, -4, 0, 4, 4, 4, 0]
        endif
    elseif a:contrast ==# 'hard'
        if &background ==# 'dark'
            let bg = 6
            let fg = 45
            let sn = 28
            let contrast_sn = [0, -8, 0, 6, 0, -6, -6, -6, 0]
        elseif &background ==# 'light'
            let bg = 45
            let fg = 6
            let sn = 23
            let contrast_sn = [0, 8, 0, -6, 0, 6, 6, 6, 0]
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
        \ 'cterm=' . a:gui
        \ 'ctermfg = NONE'
        \ 'ctermbg = NONE'
        \ 'gui='   . a:gui
        \ 'guifg=' . a:fgd
        \ 'guibg=' . a:bgd
        \ 'guisp=' . a:spl
endfunction
