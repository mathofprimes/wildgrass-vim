function wildgrass#configuration() 
    return {
        \ 'variant_dark': get(g:, 'variant_dark', 'sage'),
        \ 'variant_light': get(g:, 'variant_light', 'sage'),
        \ 'variant_contrast': get(g:, 'variant_contrast', 'medium')
        \ }
endfunction

" generates and returns a palette based off of user's
" configuration in wildgrass#configuration
function wildgrass#variant(dark, light, contrast)
    " ratio of red/green/blue each color has
    let RGB = {
        \ 'gray': [4, 4, 4],
        \ 'jade': [1, 4, 2],
        \ 'lime': [1, 4, 1],
        \ 'pear': [4, 4, 2],
        \ 'drab': [4, 4, 2],
        \ 'aqua': [2, 4, 4],
        \ 'sage': [3, 4, 3],
        \ 'teal': [1, 4, 4]
        \ }

    " check contrast
    if a:contrast ==# 'soft'
        let contrast_level = 1
    elseif a:contrast ==# 'medium'
        let contrast_level = 0
    elseif a:contrast ==# 'hard'
        let contrast_level = 1
    endif
    
    " what colors users choose for dark/light mode
    exec 'let RGB_dark = RGB.' . a:dark 
    exec 'let RGB_light = RGB.' . a:light

    for i in ['0', '1', '2', '3']
        let dark['dk' . i] = {} 
    endfor
   

    " generate dict of dark colors
    let x = 5 * (4 + contrast_level)
    let dark = { 'dk0': '#' . printf('%X', x * RGB_dark[0])
                          \ . printf('%X', x * RGB_dark[1])
                          \ . printf('%X', x * RGB_dark[2]),               
               \ 'dk1': '#' . printf('%X', x * RGB_dark[0])
                          \ . printf('%X', x * RGB_dark[1])
                          \ . printf('%X', x * RGB_dark[2]),
               \ 'dk2': '#' . printf('%X', x * RGB_dark[0])
                          \ . printf('%X', x * RGB_dark[1])
                          \ . printf('%X', x * RGB_dark[2]),
               \ 'dk3': '#' . printf('%X', x * RGB_dark[0])
                          \ . printf('%X', x * RGB_dark[1])
                          \ . printf('%X', x * RGB_dark[2])
               \ }
                
    " generate dict of light colors
    let y = 5 * (8 + contrast_level) 
    let light = { 'lt0': '#' . printf('%X', y * RGB_light[0])
                           \ . printf('%X', y * RGB_light[1])
                           \ . printf('%X', y * RGB_light[2]),
                \ 'lt1': '#' . printf('%X', y * RGB_light[0])
                           \ . printf('%X', y * RGB_light[1])
                           \ . printf('%X', y * RGB_light[2]),
                \ 'lt2': '#' . printf('%X', y * RGB_light[0])
                           \ . printf('%X', y * RGB_light[1])
                           \ . printf('%X', y * RGB_light[2]),
                \ 'lt3': '#' . printf('%X', y * RGB_light[0])
                           \ . printf('%X', y * RGB_light[1])
                           \ . printf('%X', y * RGB_light[2])
                \ }
    
    let z = 5 * (6 + contrast_level)
    let palette = { 'gray': '#' . printf('%X', z * RGB.gray[0])
                              \ . printf('%X', z * RGB.gray[1])
                              \ . printf('%X', z * RGB.gray[2]),
                  \ 'jade': '#' . printf('%X', z * RGB.jade[0])
                              \ . printf('%X', z * RGB.jade[1])
                              \ . printf('%X', z * RGB.jade[2]),
                  \ 'lime': '#' . printf('%X', z * RGB.lime[0])
                              \ . printf('%X', z * RGB.lime[1])
                              \ . printf('%X', z * RGB.lime[2]),
                  \ 'pear': '#' . printf('%X', z * RGB.pear[0])
                              \ . printf('%X', z * RGB.pear[1])
                              \ . printf('%X', z * RGB.pear[2]),
                  \ 'drab': '#' . printf('%X', z * RGB.drab[0])
                              \ . printf('%X', z * RGB.drab[1])
                              \ . printf('%X', z * RGB.drab[2]),
                  \ 'aqua': '#' . printf('%X', z * RGB.aqua[0])
                              \ . printf('%X', z * RGB.aqua[1])
                              \ . printf('%X', z * RGB.aqua[2]),
                  \ 'sage': '#' . printf('%X', z * RGB.sage[0])
                              \ . printf('%X', z * RGB.sage[1])
                              \ . printf('%X', z * RGB.sage[2]),
                  \ 'teal': '#' . printf('%X', z * RGB.teal[0])
                              \ . printf('%X', z * RGB.teal[1])
                              \ . printf('%X', z * RGB.teal[2])
                              \ }

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
