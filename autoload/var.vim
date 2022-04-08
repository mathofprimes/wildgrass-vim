function! wildgrass#configuration()
    return {
        \ 'variant_dark': get(g:, 'variant_dark', 'gray'),
        \ 'variant_light': get(g:, 'variant_light', 'gray'),
        \ 'variant_contrast': get(g:, 'variant_contrast', 'medium')
        \ }
endfunction

" this wizbang function is supposed to generate the correct
" variation based on the user's preferance. WIP
function! wildgrass#variant(dark, light, contrast) 
    if a:contrast ==# 'soft'
        let color_ratios = {
            \ 'gray': []
            \ 'jade': []
            \ 'lime': []
            \ 'pear': []
            \ 'drab': []
            \ 'aqua': []
            \ 'sage': []
            \ 'teal': []
            \ }
    elseif a:contrast ==# 'medium'
        let color_ratios = {
            \ 'gray': []
            \ 'jade': []
            \ 'lime': []
            \ 'pear': []
            \ 'drab': []
            \ 'aqua': []
            \ 'sage': []
            \ 'teal': []
            \ }
    elseif a:contrast ==# 'hard'
        let color_ratios = {
            \ 'gray': []
            \ 'jade': []
            \ 'lime': []
            \ 'pear': []
            \ 'drab': []
            \ 'aqua': []
            \ 'sage': []
            \ 'teal': []
            \ }
    endif

    for key in keys(color_ratios)


    " this loop generates the UI / background
    " colors
    for i in [0, 1, 2, 3, 4]
        let dark = {'dark'. i: '#' . printf('%X', r) 
                                 \ . printf('%X', g) 
                                 \ . printf('%X', b)
                                 \ }
        let light = {'light'. i: '#' . printf('%X', r)
                                   \ . printf('%X', g) 
                                   \ . printf('%X', b) 
                                   \ }
    endfor
    
    " this loop generates the syntax color_ratios
    for key in keys(color_ratios)
        let palette = {key: '#' . printf('%X', r) 
                              \ . printf('%X', g) 
                              \ . printf('%X', b)
                              \ }
    endfor

    if &background ==# 'dark'
        let variant = {
            \ 'bg0': variant_dk.dk0,
            \ 'bg1': variant_dk.dk1,
            \ 'bg2': variant_dk.dk2,
            \ 'bg3': variant_dk.dk3,
            \ 'bg4': variant_lt.lt0,
            \ 'bg5': variant_lt.lt1,
            \ 'bg6': variant_lt.lt2,
            \ 'bg7': variant_lt.lt3,
            \ 'gray': ['#5E605E', 'NONE'],
            \ 'jade': ['#008050', 'NONE'],
            \ 'lime': ['#208020', 'NONE'],
            \ 'pear': ['#7E8000', 'NONE'],
            \ 'drab': ['#7E8040', 'NONE'],
            \ 'aqua': ['#40807E', 'NONE'],
            \ 'sage': ['#608040', 'NONE'],
            \ 'teal': ['#00807E', 'NONE'] 
            \ }
    elseif &background ==# 'light'
        let variant = {
            \ 'bg0': variant_lt.lt0,
            \ 'bg1': variant_lt.lt1,
            \ 'bg2': variant_lt.lt2,
            \ 'bg3': variant_lt.lt3,
            \ 'bg4': variant_dk.dk0,
            \ 'bg5': variant_dk.dk1,
            \ 'bg6': variant_dk.dk2,
            \ 'bg7': variant_dk.dk3, 
            \ 'gray': ['#3E403E', 'NONE'],
            \ 'jade': ['#006048', 'NONE'],
            \ 'lime': ['#006000', 'NONE'],
            \ 'pear': ['#5E6000', 'NONE'],
            \ 'drab': ['#5E6030', 'NONE'],
            \ 'aqua': ['#30605E', 'NONE'],
            \ 'sage': ['#486030', 'NONE'],
            \ 'teal': ['#00605E', 'NONE'] 
            \ }
    endif
endfunction
