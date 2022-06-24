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
        \ 'pure': [0, 5, 0, 0],
        \ 'gray': [4, 5, 4, 1],
        \ 'jade': [0, 5, 2, 2],
        \ 'lime': [2, 5, 0, 3],
        \ 'pear': [4, 5, 0, 4],
        \ 'drab': [4, 5, 2, 5],
        \ 'aqua': [2, 5, 4, 6],
        \ 'sage': [2, 5, 2, 7],
        \ 'teal': [0, 5, 4, 8]
        \ }

    let con_bf = {
        \ 'darksoft':    [10, 41, 24],
        \ 'lightsoft':   [40, 10, 27],
        \ 'darkmedium':  [ 8, 43, 26],
        \ 'lightmedium': [43,  8, 25],
        \ 'darkhard':    [ 6, 45, 28],
        \ 'lighthard':   [45,  6, 23]
        \ }

    let con_sn = {
        \ 'darksoft':    [-1, -3,  1,  2, 0, -2, -2, 0, 0],
        \ 'lightsoft':   [ 1,  3, -1, -2, 0,  2,  2, 0, 0],
        \ 'darkmedium':  [-2, -5,  2,  4, 0,  4, -4, 0, 0],
        \ 'lightmedium': [ 2,  5, -2, -4, 0, -4,  4, 0, 0],
        \ 'darkhard':    [-3, -7,  3,  6, 0,  6, -6, 0, 0],
        \ 'lighthard':   [ 3,  7, -3, -6, 0, -6,  6, 0, 0]
        \ }

    let palette = {
        \ 'none': 'NONE',
        \ 'bold': 'bold',
        \ 'itlc': 'italic',
        \ 'rvrs': 'reverse',
        \ 'undl': 'underline',
        \ 'undc': 'undercurl'
        \ }
    
    exec 'let bg = con_bf.'  . &background . a:contrast
    exec 'let fg = con_bf.'  . &background . a:contrast
    exec 'let sn = con_bf.'  . &background . a:contrast
    exec 'let csn = con_sn.' . &background . a:contrast
    
    if &background ==# 'dark'
        exec 'let rgb_bg = rgb.' . a:dark
        exec 'let rgb_fg = rgb.' . a:light
    elseif &background ==# 'light'
        exec 'let rgb_bg = rgb.' . a:light
        exec 'let rgb_fg = rgb.' . a:dark
    endif


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

    let rgb_list = items(rgb)

    for [name, rgb_sn] in rgb_list
        let palette[name] = '#' . printf('%02X', (sn[2] + csn[rgb_sn[3]]) * rgb_sn[0])
                              \ . printf('%02X', (sn[2] + csn[rgb_sn[3]]) * rgb_sn[1])
                              \ . printf('%02X', (sn[2] + csn[rgb_sn[3]]) * rgb_sn[2])
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
