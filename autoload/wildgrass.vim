" function which stores and return user configurations
function! wildgrass#configuration() 
    return {
        \ 'wildgrass_dark': get(g:, 'wildgrass_dark', 'pure'),
        \ 'wildgrass_light': get(g:, 'wildgrass_light', 'pure'),
        \ 'wildgrass_contrast': get(g:, 'wildgrass_contrast', 'medium')
        \ }
endfunction

" function which generates palette from user configurations
function! wildgrass#generate_palette(dark, light, contrast)
    let rgb = {
        \ 'pure': [0, 5, 0, -1, -3, -5],
        \ 'gray': [4, 5, 4, -3, -5, -7],
        \ 'jade': [0, 5, 2,  0,  0,  0],
        \ 'lime': [3, 5, 0,  2,  4,  6],
        \ 'pear': [4, 5, 0,  0,  0,  0],
        \ 'drab': [4, 5, 2, -1, -3, -5],
        \ 'aqua': [2, 5, 4, -1, -3, -5],
        \ 'sage': [2, 5, 2, -1, -3, -5],
        \ 'teal': [0, 5, 4,  0,  0,  0]
        \ }

    let con_bf = {
        \ 'darksoft':    [10, 41, 24],
        \ 'lightsoft':   [40, 10, 27],
        \ 'darkmedium':  [ 8, 43, 26],
        \ 'lightmedium': [43,  8, 25],
        \ 'darkhard':    [ 6, 45, 28],
        \ 'lighthard':   [45,  6, 23]
        \ }

    let palette = {
        \ 'none': 'NONE',
        \ 'bold': 'bold',
        \ 'itlc': 'italic',
        \ 'rvrs': 'reverse',
        \ 'undl': 'underline',
        \ 'undc': 'undercurl'
        \ }
    
    if &background ==# 'dark'
        exec 'let rgb_bg = rgb.' . a:dark
        exec 'let rgb_fg = rgb.' . a:light
        let i = 1
    elseif &background ==# 'light'
        exec 'let rgb_bg = rgb.' . a:light
        exec 'let rgb_fg = rgb.' . a:dark
        let i = -1
    endif

    exec 'let bg = con_bf.'  . &background . a:contrast
    exec 'let fg = con_bf.'  . &background . a:contrast
    exec 'let sn = con_bf.'  . &background . a:contrast
    
    for bf in ['0', '1', '2', '3']
        
        if &background ==# 'dark'
            let bg[0] += 1
            let fg[1] -= 1
        elseif &background ==# 'light'
            let bg[0] -= 1
            let fg[1] += 1
        endif
        
        let palette['bg' . bf] = '#' . printf('%02X', bg[0] * rgb_bg[0])
                                   \ . printf('%02X', bg[0] * rgb_bg[1])
                                   \ . printf('%02X', bg[0] * rgb_bg[2])
        
        let palette['fg' . bf] = '#' . printf('%02X', fg[1] * rgb_fg[0])
                                   \ . printf('%02X', fg[1] * rgb_fg[1])
                                   \ . printf('%02X', fg[1] * rgb_fg[2])
    endfor

    if a:contrast ==# 'soft'
        let sn_idx = 3
    elseif a:contrast ==# 'medium'
        let sn_idx = 4
    elseif a:contrast ==# 'hard'
        let sn_idx = 5
    endif
     
    for [name, rgb_sn] in items(rgb)

        let palette[name] = '#' . printf('%02X', (sn[2] + i * rgb_sn[sn_idx]) * rgb_sn[0])
                              \ . printf('%02X', (sn[2] + i * rgb_sn[sn_idx]) * rgb_sn[1])
                              \ . printf('%02X', (sn[2] + i * rgb_sn[sn_idx]) * rgb_sn[2])
    endfor

    return palette
endfunction

function! wildgrass#HL(group, gui, fgd, bgd, spl)
    exec 'hi' a:group
        \ 'term = NONE'
        \ 'cterm=' . a:gui
        \ 'ctermfg = NONE'
        \ 'ctermbg = NONE'
        \ 'gui='   . a:gui
        \ 'guifg=' . a:fgd
        \ 'guibg=' . a:bgd
        \ 'guisp=' . a:spl
endfunction
