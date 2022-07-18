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
        \ 'pure': [ 0, 15,  0, 0],
        \ 'gray': [14, 15, 14, 1],
        \ 'jade': [ 0, 15,  7, 2],
        \ 'lime': [ 7, 15,  0, 3],
        \ 'pear': [14, 15,  0, 4],
        \ 'drab': [14, 15,  7, 5],
        \ 'aqua': [ 7, 15, 14, 6],
        \ 'sage': [ 7, 15,  7, 7],
        \ 'teal': [ 0, 15, 14, 8]
        \ }

    let con_bf = {
        \ 'darksoft':    [ 4, 13,  8,  3],
        \ 'lightsoft':   [13,  4,  9, -3],
        \ 'darkmedium':  [ 3, 14,  9,  5],
        \ 'lightmedium': [14,  3,  8, -5],
        \ 'darkhard':    [ 2, 15, 10,  7],
        \ 'lighthard':   [15,  2,  7, -7]
        \ }

    let con_sn = {
        \ 'darksoft':    [-2,  -9,  1,   4, 0, -3, -3, -2,  1],
        \ 'lightsoft':   [ 2,   9, -1,  -4, 0,  3,  3,  2, -1],
        \ 'darkmedium':  [-4, -18,  2,   8, 0, -6, -6, -4,  2],
        \ 'lightmedium': [ 4,  18, -2,  -8, 0,  6,  6,  4, -2],
        \ 'darkhard':    [-6, -27,  3,  12, 0, -9, -9, -6,  3],
        \ 'lighthard':   [ 6,  27, -3, -12, 0,  9,  9,  6, -3]
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

    let count_bg = 0
    let count_fg = 0

    for bf in ['0', '1', '2', '3']
        if &background ==# 'dark'
            let count_bg += bg[3]
            let count_fg += fg[3]
        elseif &background ==# 'light'
            let count_bg += fg[3]
            let count_fg += bg[3]
        endif

        let palette['bg' . bf] = '#' . printf('%02X', abs(bg[0] * rgb_bg[0] + count_bg))
                                   \ . printf('%02X', abs(bg[0] * rgb_bg[1] + count_bg))
                                   \ . printf('%02X', abs(bg[0] * rgb_bg[2] + count_bg))
        
        let palette['fg' . bf] = '#' . printf('%02X', abs(fg[1] * rgb_fg[0] + count_fg))
                                   \ . printf('%02X', abs(fg[1] * rgb_fg[1] + count_fg))
                                   \ . printf('%02X', abs(fg[1] * rgb_fg[2] + count_fg))
    endfor

    for [name, rgb_sn] in items(rgb)
        let palette[name] = '#' . printf('%02X', abs(sn[2] * rgb_sn[0] + csn[rgb_sn[3]]))
                              \ . printf('%02X', abs(sn[2] * rgb_sn[1] + csn[rgb_sn[3]]))
                              \ . printf('%02X', abs(sn[2] * rgb_sn[2] + csn[rgb_sn[3]]))
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
