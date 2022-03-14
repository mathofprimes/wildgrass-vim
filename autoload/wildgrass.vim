function! wildgrass#variant_palette(variant_name)
    if &background ==# 'dark'
        let syntax = {
            \ 'gray': ['#6E706E', 'NONE'],
            \ 'jade': ['#008060', 'NONE'],
            \ 'lime': ['#208000', 'NONE'],
            \ 'pear': ['#7E8000', 'NONE'],
            \ 'drab': ['#7E8040', 'NONE'],
            \ 'aqua': ['#40807E', 'NONE'],
            \ 'sage': ['#608040', 'NONE'],
            \ 'teal': ['#00807E', 'NONE']
            \ }
        if a:variant_name ==# 'gray'
            let background = {
                \ 'bg0': ['#262826', 'NONE'],
                \ 'bg1': ['#303230', 'NONE'],
                \ 'bg2': ['#343634', 'NONE'],
                \ 'bg3': ['#383A38', 'NONE'],
                \ 'bg4': ['#A6A8A6', 'NONE'],
                \ 'bg5': ['#B0B2B0', 'NONE'],
                \ 'bg6': ['#B4B6B4', 'NONE'],
                \ 'bg7': ['#B8BAB8', 'NONE']
                \ }
        elseif a:variant_name == 'jade'
            let background = {
                \ 'bg0': ['#00281E', 'NONE'],
                \ 'bg1': ['#003224', 'NONE'],
                \ 'bg2': ['#003628', 'NONE'], 
                \ 'bg3': ['#003A2C', 'NONE'],
                \ 'bg4': ['#00A87E', 'NONE'],
                \ 'bg5': ['#00B284', 'NONE'],
                \ 'bg6': ['#00B688', 'NONE'],
                \ 'bg7': ['#00BA8C', 'NONE']
                \ }
        endif 
    elseif &background ==# 'light'
        let syntax = {
            \ 'gray': ['#6E706E', 'NONE'],
            \ 'jade': ['#006048', 'NONE'],
            \ 'lime': ['#186000', 'NONE'],
            \ 'pear': ['#5E6000', 'NONE'],
            \ 'drab': ['#5E6030', 'NONE'],
            \ 'aqua': ['#30605E', 'NONE'],
            \ 'sage': ['#486030', 'NONE'],
            \ 'teal': ['#00605E', 'NONE'],
            \ }
        if a:variant_name ==# 'gray'
            let background = {
                \ 'bg0': ['#A6A8A6', 'NONE'],
                \ 'bg1': ['#B0B2B0', 'NONE'],
                \ 'bg2': ['#B4B6B4', 'NONE'],
                \ 'bg3': ['#B8BAB8', 'NONE'],
                \ 'bg4': ['#262826', 'NONE'],
                \ 'bg5': ['#303230', 'NONE'],
                \ 'bg6': ['#343634', 'NONE'],
                \ 'bg7': ['#383A38', 'NONE']
                \ }
        elseif a:variant_name ==# 'jade'
            let background = {
                \ 'bg0': ['#00A87E', 'NONE'],
                \ 'bg1': ['#00B284', 'NONE'],
                \ 'bg2': ['#00B688', 'NONE'],
                \ 'bg3': ['#00BA8C', 'NONE'],
                \ 'bg4': ['#00281E', 'NONE'],
                \ 'bg5': ['#003224', 'NONE'],
                \ 'bg6': ['#003628', 'NONE'], 
                \ 'bg7': ['#003A2C', 'NONE']
                \ }
        endif
    endif
    let other = {
            \ 'ot0': ['NONE', 'NONE'],
            \ 'ot1': ['bold', 'bold'],
            \ 'ot2': ['italic', 'italic'],
            \ 'ot3': ['reverse', 'reverse'],
            \ 'ot4': ['underline', 'underline'],
            \ 'ot5': ['undercurl', 'undercurl']
            \ }
    return extend(background, extend(syntax, other))
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
