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
        \ 'jade': [0, 4, 2],
        \ 'lime': [1, 4, 1],
        \ 'pear': [4, 4, 2],
        \ 'drab': [4, 4, 2],
        \ 'aqua': [2, 4, 4],
        \ 'sage': [3, 4, 3],
        \ 'teal': [1, 4, 4]
        \ }
    
    " check contrast
    if a:contrast ==# 'soft'
        let soft_dark = 1
        let soft_dark_ = 0
        let light_contrast= 1
        let light_palette_contrast = 1
    elseif a:contrast ==# 'medium'
        let dark_contrast = 2
        let dark_palette_contrast = 2
        let light_contrast= 2
        let light_palette_contrast = 2
    elseif a:contrast ==# 'hard'
        let dark_contrast = 3
        let dark_palette_contrast = 3
        let light_contrast= 3
        let light_palette_contrast = 3
    endif
    
    " what colors users choose for dark/light mode
    exec 'let RGB_dark = RGB.' . a:dark 
    exec 'let RGB_light = RGB.' . a:light
   

    " generate dict of dark colors
    let x = dark_contrast
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
    let y = light_contrast 
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
    
    for k in ['gray', 'jade', 'lime', 'pear', 'drab', 'aqua', 'sage', 'teal']
        let z = dark_palette_contrast
        let palette = {k: '#' . printf('%X', z * RGB.jade[0])
                            \ . printf('%X', z * RGB.jade[1])
                            \ . printf('%X', z * RGB.jade[2])
                            \ }
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
        let variant = {
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
        \ 'none': ['NONE', 'NONE'],
        \ 'bold': ['bold', 'bold'],
        \ 'italic': ['italic', 'italic'],
        \ 'reverse': ['reverse', 'reverse'],
        \ 'underline': ['underline', 'underline'],
        \ 'undercurl': ['undercurl', 'undercurl']
        \ }
    return extend(variant, other)
endfunction

function! wildgrass#HL(contrast, group, gui, fgd, bgd, spl)
    if a:contrast == 'soft'
    exec 'hi' a:group
        \ 'cterm   = NONE'
        \ 'ctermfg = NONE'
        \ 'ctermbg = NONE'
        \ 'gui='   . a:gui
        \ 'guifg=' . a:fgd
        \ 'guibg=' . a:bgd
        \ 'guisp=' . a:spl
endfunction
