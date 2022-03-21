function! wildgrass#config()
    return {
        \ 'variant_dark': get(g:, 'variant_dark', 'gray'),
        \ 'variant_light': get(g:, 'variant_light', 'gray'),
        \ 'variant_contrast': get(g:, 'variant_contrast', 'high')
        \ }
endfunction

function! wildgrass#variant(dark, light)
    if a:dark ==# 'gray'
        let variant_dk = {
            \ 'dk0': ['#262826', 'NONE'],
            \ 'dk1': ['#303230', 'NONE'],
            \ 'dk2': ['#343634', 'NONE'],
            \ 'dk3': ['#383A38', 'NONE']
            \ }
    elseif a:dark ==# 'jade'
        let variant_dk = {
            \ 'dk0': ['#002820', 'NONE'],
            \ 'dk1': ['#003224', 'NONE'],
            \ 'dk2': ['#003628', 'NONE'], 
            \ 'dk3': ['#003A2C', 'NONE']
            \ }
    elseif a:dark ==# 'lime'
        let variant_dk = {
            \ 'dk0': ['#002800', 'NONE'],
            \ 'dk1': ['#003200', 'NONE'],
            \ 'dk2': ['#003600', 'NONE'],
            \ 'dk3': ['#003A00', 'NONE']
            \ }
    elseif a:dark ==# 'pear'
        let variant_dk = {
            \ 'dk0': ['#262800', 'NONE'],
            \ 'dk1': ['#303200', 'NONE'],
            \ 'dk2': ['#343600', 'NONE'],
            \ 'dk3': ['#383A00', 'NONE']
            \ }
    elseif a:dark ==# 'drab'
        let variant_dk = {
            \ 'dk0': ['#262814', 'NONE'],
            \ 'dk1': ['#303216', 'NONE'],
            \ 'dk2': ['#34361A', 'NONE'],
            \ 'dk3': ['#383A1C', 'NONE']
            \ }
    elseif a:dark ==# 'aqua'
        let variant_dk = {
            \ 'dk0': ['#142826', 'NONE'],
            \ 'dk1': ['#163230', 'NONE'],
            \ 'dk2': ['#1A3634', 'NONE'],
            \ 'dk3': ['#1C3A38', 'NONE']
            \ }
    elseif a:dark ==# 'sage'
        let variant_dk = {
            \ 'dk0': ['#142814', 'NONE'],
            \ 'dk1': ['#163216', 'NONE'],
            \ 'dk2': ['#1A361A', 'NONE'],
            \ 'dk3': ['#1C3A1C', 'NONE']
            \ }
    elseif a:dark ==# 'teal'
        let variant_dk = {
            \ 'dk0': ['#002826', 'NONE'],
            \ 'dk1': ['#003230', 'NONE'],
            \ 'dk2': ['#003634', 'NONE'],
            \ 'dk3': ['#003A34', 'NONE']
            \ }
    endif

    if a:light ==# 'gray'
        let variant_lt = {
            \ 'lt0': ['#B8BAB8', 'NONE'], 
            \ 'lt1': ['#B4B6B4', 'NONE'],
            \ 'lt2': ['#B0B2B0', 'NONE'],
            \ 'lt3': ['#A6A8A6', 'NONE']
            \ }
    elseif a:light ==# 'jade'
        let variant_lt = {
            \ 'lt0': ['#00BA8C', 'NONE'],
            \ 'lt1': ['#00B688', 'NONE'],
            \ 'lt3': ['#00A880', 'NONE']
            \ }
    elseif a:light ==# 'lime'
        let variant_lt = {
            \ 'lt0': ['#00BA00', 'NONE'],
            \ 'lt1': ['#00B600', 'NONE'],
            \ 'lt2': ['#00B200', 'NONE'],
            \ 'lt3': ['#00A800', 'NONE']
            \ }
    elseif a:light ==# 'pear'
        let variant_lt = {
            \ 'lt0': ['#B8BA00', 'NONE'],
            \ 'lt1': ['#B4B600', 'NONE'],
            \ 'lt2': ['#B0B200', 'NONE'],
            \ 'lt3': ['#A6A800', 'NONE']
            \ }
    elseif a:light ==# 'drab'
        let variant_lt = {
            \ 'lt0': ['#B8BA54', 'NONE'],
            \ 'lt1': ['#B4B656', 'NONE'],
            \ 'lt2': ['#B0B25A', 'NONE'],
            \ 'lt3': ['#A6A85C', 'NONE']
            \ }
    elseif a:dark ==# 'aqua'
        let variant_lt = {
            \ 'lt0': ['#54BAB8', 'NONE'],
            \ 'lt1': ['#56B6B4', 'NONE'],
            \ 'lt2': ['#5AB2B0', 'NONE'],
            \ 'lt3': ['#5CA8A6', 'NONE']
            \ }
    elseif a:dark ==# 'sage'
        let variant_lt = {
            \ 'lt0': ['#54BA54', 'NONE'],
            \ 'lt1': ['#56B656', 'NONE'],
            \ 'lt2': ['#5AB25A', 'NONE'],
            \ 'lt3': ['#5CA85C', 'NONE']
            \ }
    elseif a:light ==# 'teal'
        let variant_lt = {
            \ 'lt0': ['#00BAB8', 'NONE'], 
            \ 'lt1': ['#00B6B4', 'NONE'],
            \ 'lt2': ['#00B2B0', 'NONE'],
            \ 'lt3': ['#00A8A6', 'NONE']
            \ }
    endif

    if &background ==# 'dark'
        let variant = {
            \ 'bg0': variant_dk.dk0,
            \ 'bg1': variant_dk.dk1,
            \ 'bg2': variant_dk.dk2,
            \ 'bg3': variant_dk.dk3,
            \ 'bg4': variant_lt.lt0,
            \ 'bg5': variant_lt.lt1,
            \ 'bg6': variant_lt.lt2,
            \ 'bg7': variant_lt.lt3
            \ }
        let syntax = {
            \ 'gray': ['#5E605E', 'NONE'],
            \ 'jade': ['#008060', 'NONE'],
            \ 'lime': ['#008000', 'NONE'],
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
            \ 'bg7': variant_dk.dk3 
            \ } 
        let syntax = {
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
    let other = {
        \ 'none': ['NONE', 'NONE'],
        \ 'bold': ['bold', 'bold'],
        \ 'italic': ['italic', 'italic'],
        \ 'reverse': ['reverse', 'reverse'],
        \ 'underline': ['underline', 'underline'],
        \ 'undercurl': ['undercurl', 'undercurl']
        \ }
    return extend(variant, extend(syntax, other))
endfunction

" sets the variant of highlight groups
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
