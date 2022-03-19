function! wildgrass#config_dark()
    return {
        \ 'variant_dark': get(g:, 'variant_dark', 'gray'),
        \ }
endfunction

function! wildgrass#config_light()
    return {
        \ 'variant_light': get(g:, 'variant_light', 'gray'),
        \ }
endfunction

function! wildgrass#variant_palette(variant_dark, variant_light)
    if a:variant_dark ==# 'gray'
        let background_dark = {
            \ 'dk0': ['#262826', 'NONE'],
            \ 'dk1': ['#303230', 'NONE'],
            \ 'dk2': ['#343634', 'NONE'],
            \ 'dk3': ['#383A38', 'NONE']
            \ }
    elseif a:variant_dark == 'jade'
        let background_dark = {
            \ 'dk0': ['#00281E', 'NONE'],
            \ 'dk1': ['#003224', 'NONE'],
            \ 'dk2': ['#003628', 'NONE'], 
            \ 'dk3': ['#003A2C', 'NONE']
            \ }
    endif

    if a:variant_light ==# 'gray'
        let background_light = {
            \ 'lt0': ['#A6A8A6', 'NONE'],
            \ 'lt1': ['#B0B2B0', 'NONE'],
            \ 'lt2': ['#B4B6B4', 'NONE'],
            \ 'lt3': ['#B8BAB8', 'NONE'] 
            \ }
    elseif a:variant_light ==# 'jade'
        let background_light = {
            \ 'lt0': ['#00A87E', 'NONE'],
            \ 'lt1': ['#00B284', 'NONE'],
            \ 'lt2': ['#00B688', 'NONE'],
            \ 'lt3': ['#00BA8C', 'NONE']
            \ }
    endif

    if &background ==# 'dark'
        let background = {
            \ 'bg0' : background_dark.dk0,
            \ 'bg1' : background_dark.dk1,
            \ 'bg2' : background_dark.dk2,
            \ 'bg3' : background_dark.dk3,
            \ 'bg4' : background_light.lt0,
            \ 'bg5' : background_light.lt1,
            \ 'bg6' : background_light.lt2,
            \ 'bg7' : background_light.lt3
            \ }
        let syntax = {
            \ 'gray': ['#6E706E', 'NONE'],
            \ 'jade': ['#008060', 'NONE'],
            \ 'lime': ['#008000', 'NONE'],
            \ 'pear': ['#7E8000', 'NONE'],
            \ 'drab': ['#7E8040', 'NONE'],
            \ 'aqua': ['#40807E', 'NONE'],
            \ 'sage': ['#608040', 'NONE'],
            \ 'teal': ['#00807E', 'NONE'],
            \ 'none': ['NONE', 'NONE'],
            \ 'bold': ['bold', 'bold'],
            \ 'italic': ['italic', 'italic'],
            \ 'reverse': ['reverse', 'reverse'],
            \ 'underline': ['underline', 'underline'],
            \ 'undercurl': ['undercurl', 'undercurl']
            \ }
    elseif &background ==# 'light'
        let background = {
            \ 'bg0' : background_light.lt0,
            \ 'bg1' : background_light.lt1,
            \ 'bg2' : background_light.lt2,
            \ 'bg3' : background_light.lt3,
            \ 'bg4' : background_dark.dk0,
            \ 'bg5' : background_dark.dk1,
            \ 'bg6' : background_dark.dk2,
            \ 'bg7' : background_dark.dk3 
            \ } 
        let syntax = {
            \ 'gray': ['#6E706E', 'NONE'],
            \ 'jade': ['#006048', 'NONE'],
            \ 'lime': ['#006000', 'NONE'],
            \ 'pear': ['#5E6000', 'NONE'],
            \ 'drab': ['#5E6030', 'NONE'],
            \ 'aqua': ['#30605E', 'NONE'],
            \ 'sage': ['#486030', 'NONE'],
            \ 'teal': ['#00605E', 'NONE'],
            \ 'none': ['NONE', 'NONE'],
            \ 'bold': ['bold', 'bold'],
            \ 'italic': ['italic', 'italic'],
            \ 'reverse': ['reverse', 'reverse'],
            \ 'underline': ['underline', 'underline'],
            \ 'undercurl': ['undercurl', 'undercurl']
            \ }
    endif
    return extend(background, syntax)
endfunction

" sets the colors of highlight groups
function! wildgrass#HL(group, cg, fg, bg, sp)
    exec 'hi' a:group
            \ 'cterm='   . a:cg[1]
            \ 'ctermfg=' . a:fg[1]
            \ 'ctermbg=' . a:bg[1]
            \ 'gui='     . a:cg[0]
            \ 'guifg='   . a:fg[0]
            \ 'guibg='   . a:bg[0]
            \ 'guisp='   . a:sp[0]
endfunction
