" user configuration options
function wildgrass#configuration() 
    return {
        \ 'variant_dark': get(g:, 'variant_dark', 'sage'),
        \ 'variant_light': get(g:, 'variant_light', 'sage'),
        \ 'variant_contrast': get(g:, 'variant_contrast', 'medium')
        \ }
endfunction

" generates and returns user's palette
function wildgrass#variant(dark, light, contrast)
    " check contrast
    if a:contrast ==# 'soft'
        let x = 10
        let y = 44
        
        if &background ==# 'dark'
            let z = 24
            let RGB = {
                \ 'gray': [5, 5, 5, -4],
                \ 'jade':  [0, 5, 3, 0],
                \ 'lime':  [0, 5, 0, 2],
                \ 'pear':  [5, 5, 0, 0],
                \ 'drab': [5, 5, 3, -2],
                \ 'aqua': [3, 5, 5, -2],
                \ 'sage': [3, 5, 3, -2],
                \ 'teal':  [0, 5, 5, 0]
                \ }
        elseif &background ==# 'light'
            let z = 26
            let RGB = {
                \ 'gray':  [5, 5, 5, 4],
                \ 'jade':  [0, 5, 3, 0],
                \ 'lime': [0, 5, 0, -2],
                \ 'pear':  [5, 5, 0, 0],
                \ 'drab':  [5, 5, 3, 2],
                \ 'aqua':  [3, 5, 5, 2],
                \ 'sage':  [3, 5, 3, 2],
                \ 'teal':  [0, 5, 5, 0]
                \ }
        endif
    elseif a:contrast ==# 'medium'
        let x = 8
        let y = 42

        if &background ==# 'dark'
            let z = 24
            let RGB = {
                \ 'gray': [5, 5, 5, -6],
                \ 'jade':  [0, 5, 3, 0],
                \ 'lime':  [0, 5, 0, 4],
                \ 'pear':  [5, 5, 0, 0],
                \ 'drab': [5, 5, 3, -4],
                \ 'aqua': [3, 5, 5, -4],
                \ 'sage': [3, 5, 3, -4],
                \ 'teal':  [0, 5, 5, 0]
                \ }
        elseif &background ==# 'light'
            let z = 26
            let RGB = {
                \ 'gray':  [5, 5, 5, 6],
                \ 'jade':  [0, 5, 3, 0],
                \ 'lime': [0, 5, 0, -4],
                \ 'pear':  [5, 5, 0, 0],
                \ 'drab':  [5, 5, 3, 4],
                \ 'aqua':  [3, 5, 5, 4],
                \ 'sage':  [3, 5, 3, 4],
                \ 'teal':  [0, 5, 5, 0]
                \ }
        endif
    elseif a:contrast ==# 'hard'
        let x = 6
        let y = 44

        if &background ==# 'dark'
            let z = 24
            let RGB = {
                \ 'gray': [5, 5, 5, -8],
                \ 'jade':  [0, 5, 3, 0],
                \ 'lime':  [0, 5, 0, 6],
                \ 'pear':  [5, 5, 0, 0],
                \ 'drab': [5, 5, 3, -6],
                \ 'aqua': [3, 5, 5, -6],
                \ 'sage': [3, 5, 3, -6],
                \ 'teal':  [0, 5, 5, 0]
                \ }
        elseif &background ==# 'light'
            let z = 26
            let RGB = {
                \ 'gray':  [5, 5, 5, 8],
                \ 'jade':  [0, 5, 3, 0],
                \ 'lime': [0, 5, 0, -6],
                \ 'pear':  [5, 5, 0, 0],
                \ 'drab':  [5, 5, 3, 6],
                \ 'aqua':  [3, 5, 5, 6],
                \ 'sage':  [3, 5, 3, 6],
                \ 'teal':  [0, 5, 5, 0]
                \ }
        endif
    endif
    
    " colors for dark/light mode
    exec 'let RGB_dark = RGB.' . a:dark 
    exec 'let RGB_light = RGB.' . a:light
   
    " init dark colors dict
    let dark = {}
    let count_dk = 0
    
    for i in ['dk0', 'dk1', 'dk2', 'dk3']
        let red = printf('%X', (x + count_dk) * RGB_dark[0])
        let green = printf('%X', (x + count_dk) * RGB_dark[1])
        let blue = printf('%X', (x + count_dk) * RGB_dark[2])
        
        " check red
        if len(red) < 2
            let red = printf('%02X', (x + count_dk) * RGB_dark[0])
        endif
        
        " check green
        if len(green) < 2
            let green = printf('%02X', (x + count_dk) * RGB_dark[1])
        endif
        
        " check blue
        if len(blue) < 2
            let blue = printf('%02X', (x + count_dk) * RGB_dark[2])
        endif

        let count_dk += 1

        let dark[i] = '#' . red . green . blue
    endfor

    let light = {}
    let count_lt = 0
    
    for i in ['lt0', 'lt1', 'lt2', 'lt3']
        let red = printf('%X', (y + count_lt) * RGB_light[0])
        let green = printf('%X', (y + count_lt) * RGB_light[1])
        let blue = printf('%X', (y + count_lt) * RGB_light[2])
        
        " check red
        if len(red) < 2
            let red = printf('%02X', (y + count_lt) * RGB_light[0])
        endif
        
        " check green
        if len(green) < 2
            let green = printf('%02X', (y + count_lt) * RGB_light[1])
        endif
        
        " check blue
        if len(blue) < 2
            let blue = printf('%02X', (y + count_lt) * RGB_light[2])
        endif

        let count_lt -= 1

        let light[i] = '#' . red . green . blue
    endfor
    
    let palette = {}

    for k in keys(RGB)
        exec 'let RGB_palette = RGB.' . k
        
        let red = printf('%X', (z + RGB_palette[3]) * RGB_palette[0])
        let green = printf('%X', (z + RGB_palette[3]) * RGB_palette[1])
        let blue = printf('%X', (z + RGB_palette[3]) * RGB_palette[2])

        " check red
        if len(red) < 2
            let red = printf('%02X', (z + RGB_palette[3]) * RGB_palette[0])
        endif

        " check green
        if len(green) < 2
            let green = printf('%02X', (z + RGB_palette[3]) * RGB_palette[1])
        endif

        " check blue
        if len(blue) < 2
            let blue = printf('%02X', (z + RGB_palette[3]) * RGB_palette[2])
        endif
        
        let palette[k] = '#' . red . green . blue
    endfor
    
    " check if dark or light mode set
    if &background ==# 'dark'
        let background = {
            \ 'bg0': dark.dk0,
            \ 'bg1': dark.dk1,
            \ 'bg2': dark.dk2,
            \ 'bg3': dark.dk3,
            \ 'bg4': light.lt0,
            \ 'bg5': light.lt1,
            \ 'bg6': light.lt2,
            \ 'bg7': light.lt3
            \ }
        let variant = extend(background, palette)
    elseif &background ==# 'light'
        let background = {
            \ 'bg0': light.lt0,
            \ 'bg1': light.lt1,
            \ 'bg2': light.lt2,
            \ 'bg3': light.lt3,
            \ 'bg4': dark.dk0,
            \ 'bg5': dark.dk1,
            \ 'bg6': dark.dk2,
            \ 'bg7': dark.dk3 
            \ }
        let variant = extend(background, palette)
    endif
    let other = {
        \ 'none': 'NONE',
        \ 'bold': 'bold',
        \ 'italic': 'italic',
        \ 'reverse': 'reverse',
        \ 'underline': 'underline',
        \ 'undercurl': 'undercurl'
        \ }
    return extend(variant, other)
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
