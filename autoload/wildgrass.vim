function! wildgrass#config()
    return {
        \ 'variant_dark': get(g:, 'variant_dark', 'gray'),
        \ 'variant_light': get(g:, 'variant_light', 'gray'),
        \ 'variant_contrast': get(g:, 'variant_contrast', 'high')
        \ }
endfunction

function! wildgrass#custom_variant(dark, light)
    if a:dark ==# 'gray'
        let colors_dk = {
            \ 'dk0': ['#262826', 'NONE'],
            \ 'dk1': ['#303230', 'NONE'],
            \ 'dk2': ['#343634', 'NONE'],
            \ 'dk3': ['#383A38', 'NONE']
            \ }
    elseif a:dark ==# 'jade'
        let colors_dk = {
            \ 'dk0': ['#00281E', 'NONE'],
            \ 'dk1': ['#003224', 'NONE'],
            \ 'dk2': ['#003628', 'NONE'], 
            \ 'dk3': ['#003A2C', 'NONE']
            \ }
    elseif a:dark ==# 'lime'
        let colors_dk = {
            \ 'dk0': ['#002800', 'NONE'],
            \ 'dk1': ['#003200', 'NONE'],
            \ 'dk2': ['#003600', 'NONE'],
            \ 'dk3': ['#003A00', 'NONE']
            \ }
    endif

    if a:light ==# 'gray'
        let colors_lt = {
            \ 'lt0': ['#B8BAB8', 'NONE'], 
            \ 'lt1': ['#B4B6B4', 'NONE'],
            \ 'lt2': ['#B0B2B0', 'NONE'],
            \ 'lt3': ['#A6A8A6', 'NONE']
            \ }
    elseif a:light ==# 'jade'
        let colors_lt = {
            \ 'lt0': ['#00BA8C', 'NONE'],
            \ 'lt1': ['#00B688', 'NONE'],
            \ 'lt2': ['#00B284', 'NONE'],
            \ 'lt3': ['#00A87E', 'NONE']
            \ }
    elseif a:light ==# 'lime'
        let colors_lt = {
            \ 'lt0': ['#00BA00', 'NONE'],
            \ 'lt1': ['#00B600', 'NONE'],
            \ 'lt2': ['#00B200', 'NONE'],
            \ 'lt3': ['#00A800', 'NONE']
            \ }
    endif

    if &background ==# 'dark'
        let custom = {
            \ 'bg0': colors_dk.dk0,
            \ 'bg1': colors_dk.dk1,
            \ 'bg2': colors_dk.dk2,
            \ 'bg3': colors_dk.dk3,
            \ 'bg4': colors_lt.lt0,
            \ 'bg5': colors_lt.lt1,
            \ 'bg6': colors_lt.lt2,
            \ 'bg7': colors_lt.lt3
            \ }
        let syntax = {
            \ 'gray': ['#6E706E', 'NONE'],
            \ 'jade': ['#008060', 'NONE'],
            \ 'lime': ['#008000', 'NONE'],
            \ 'pear': ['#7E8000', 'NONE'],
            \ 'drab': ['#7E8040', 'NONE'],
            \ 'aqua': ['#40807E', 'NONE'],
            \ 'sage': ['#608040', 'NONE'],
            \ 'teal': ['#00807E', 'NONE'] 
            \ }
    elseif &background ==# 'light'
        let custom = {
            \ 'bg0': colors_lt.lt0,
            \ 'bg1': colors_lt.lt1,
            \ 'bg2': colors_lt.lt2,
            \ 'bg3': colors_lt.lt3,
            \ 'bg4': colors_dk.dk0,
            \ 'bg5': colors_dk.dk1,
            \ 'bg6': colors_dk.dk2,
            \ 'bg7': colors_dk.dk3 
            \ } 
        let syntax = {
            \ 'gray': ['#6E706E', 'NONE'],
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
    return extend(custom, extend(syntax, other))
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
