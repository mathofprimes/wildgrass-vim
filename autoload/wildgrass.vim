function! wildgrass#configuration() 
    return {
        \ 'wildgrass_dark': get(g:, 'wildgrass_dark', 'pure'),
        \ 'wildgrass_light': get(g:, 'wildgrass_light', 'pure'),
        \ 'wildgrass_contrast': get(g:, 'wildgrass_contrast', 'medium')
        \ }
endfunction

function! wildgrass#generate_palette(dark, light, contrast)
    let rgb = {
        \ 'pure': [0.5, 5.0, 1.0, -1.0, -3.0, -5.0],
        \ 'gray': [4.5, 5.0, 4.5, -4.0, -6.0, -8.0],
        \ 'jade': [0.5, 5.0, 2.5,  0.0,  0.0,  0.0],
        \ 'lime': [2.5, 5.0, 0.5,  2.0,  4.0,  6.0],
        \ 'pear': [4.5, 5.0, 0.5,  0.0,  0.0,  0.0],
        \ 'drab': [4.5, 5.0, 2.5, -1.0, -3.0, -5.0],
        \ 'aqua': [2.5, 5.0, 4.5, -1.0, -3.0, -5.0],
        \ 'sage': [2.5, 5.0, 2.5, -1.0, -3.0, -5.0],
        \ 'teal': [0.5, 5.0, 4.5,  0.0,  0.0,  0.0]
        \ }

    let con_bf = {
        \ 'darksoft':    [10.0, 41.0, 24.0],
        \ 'lightsoft':   [40.0, 10.0, 27.0],
        \ 'darkmedium':  [ 8.0, 43.0, 26.0],
        \ 'lightmedium': [43.0,  8.0, 25.0],
        \ 'darkhard':    [ 6.0, 45.0, 28.0],
        \ 'lighthard':   [45.0,  6.0, 23.0]
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
        
        let palette['bg' . bf] = '#' . printf('%02X', float2nr(bg[0] * rgb_bg[0]))
                                   \ . printf('%02X', float2nr(bg[0] * rgb_bg[1]))
                                   \ . printf('%02X', float2nr(bg[0] * rgb_bg[2]))
        
        let palette['fg' . bf] = '#' . printf('%02X', float2nr(fg[1] * rgb_fg[0]))
                                   \ . printf('%02X', float2nr(fg[1] * rgb_fg[1]))
                                   \ . printf('%02X', float2nr(fg[1] * rgb_fg[2]))
    endfor

    if a:contrast ==# 'soft'
        let sn_idx = 3
    elseif a:contrast ==# 'medium'
        let sn_idx = 4
    elseif a:contrast ==# 'hard'
        let sn_idx = 5
    endif
     
    for [name, rgb_sn] in items(rgb)

        let palette[name] = '#' . printf('%02X', float2nr((sn[2] + i * rgb_sn[sn_idx]) * rgb_sn[0]))
                              \ . printf('%02X', float2nr((sn[2] + i * rgb_sn[sn_idx]) * rgb_sn[1]))
                              \ . printf('%02X', float2nr((sn[2] + i * rgb_sn[sn_idx]) * rgb_sn[2]))
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
