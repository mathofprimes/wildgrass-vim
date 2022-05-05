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
    " ratio of red/green/blue each color has
    let RGB = {
        \ 'gray': [4, 4, 4],
        \ 'jade': [0, 4, 2],
        \ 'lime': [1, 4, 1],
        \ 'pear': [4, 4, 0],
        \ 'drab': [4, 4, 2],
        \ 'aqua': [2, 4, 4],
        \ 'sage': [3, 4, 3],
        \ 'teal': [0, 4, 4]
        \ }

    " check contrast
    if a:contrast ==# 'soft'
        let contrast_level = 1
    elseif a:contrast ==# 'medium'
        let contrast_level = 0
    elseif a:contrast ==# 'hard'
        let contrast_level = 1
    endif
    
    " colors for dark/light mode
    exec 'let RGB_dark = RGB.' . a:dark 
    exec 'let RGB_light = RGB.' . a:light
   
    " init dark colors dict
    let dark = {}
    let x = 5 * (2 + contrast_level)
    
    for i in ['0', '1', '2', '3']
        " check red
        if len(printf('%X', x * RGB_dark[0])) < 2
            let red = printf('%02X', x * RGB_dark[0]) 
        else
            let red = printf('%X', x * RGB_dark[0])
        endif
        
        " check green
        if len(printf('%X', x * RGB_dark[1])) < 2
            let green = printf('%02X', x * RGB_dark[1])
        else
            let green = printf('%X', x * RGB_dark[1])
        endif
        
        " check blue
        if len(printf('%X', x * RGB_dark[2])) < 2
            let blue = printf('%02X', x * RGB_dark[2])
        else
            let blue = printf('%X', x * RGB_dark[2])
        endif 

        let dark['dk' . i] = '#' . red . green . blue
    endfor

    " init light colors dict
    let light = {}
    let y = 5 * (8 + contrast_level) 
    
    for j in ['0', '1', '2', '3']
        " check red
        if len(printf('%X', y * RGB_light[0])) < 2
            let red = printf('%02X', y * RGB_light[0]) 
        else
            let red = printf('%X', y * RGB_light[0])
        endif
        
        " check green
        if len(printf('%X', y * RGB_light[1])) < 2
            let green = printf('%02X', y * RGB_light[1])
        else
            let green = printf('%X', y * RGB_light[1])
        endif
        
        " check blue
        if len(printf('%X', y * RGB_light[2])) < 2
            let blue = printf('%02X', y * RGB_light[2])
        else
            let blue = printf('%X', y * RGB_light[2])
        endif

        let light['lt' . j] = '#' . red . green . blue
    endfor
    
    " init palette colors dict
    let palette = {}
    let z = 5 * (6 + contrast_level)

    for key in keys(RGB)

        exec 'let color = RGB.' . key
        
        " check red
        if len(printf('%X', z * color[0])) < 2
            let red = printf('%02X', z * color[0]) 
        else
            let red = printf('%X', z * color[0])
        endif
        
        " check green
        if len(printf('%X', z * color[1])) < 2
            let green = printf('%02X', z * color[1])
        else
            let green = printf('%X', z * color[1])
        endif
        
        " check blue
        if len(printf('%X', z * color[2])) < 2
            let blue = printf('%02X', z * color[2])
        else
            let blue = printf('%X', z * color[2])
        endif

        let palette[key] = '#' . red . green . blue
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
