function! wildgrass#variant_palette(variant_name)
    if &background ==# 'dark'
        let syntax = {
            \ 'gray': ['#7F817F', 'NONE'],
            \ 'jade': ['#019161', 'NONE'],
            \ 'green': ['#019101', 'NONE'],
            \ 'bronze': ['#8F9101', 'NONE'],
            \ 'patina': ['#8F9141', 'NONE'],
            \ 'slate': ['#41918F', 'NONE'],
            \ 'faded': ['#619161', 'NONE'],
            \ 'turquoise': ['#01918F', 'NONE'],
            \ 'none': ['NONE', 'NONE'],
            \ 'ot1': ['bold', 'bold'],
            \ 'ot2': ['italic', 'italic'],
            \ 'ot3': ['reverse', 'reverse'],
            \ 'ot4': ['underline', 'underline'],
            \ 'ot5': ['undercurl', 'undercurl']
            \ }
        if a:variant_name ==# 'gray'
            let background = {
                \ 'bg0': ['#2F312F', 'NONE'],
                \ 'bg1': ['#33353F', 'NONE'],
                \ 'bg2': ['#393B39', 'NONE'],
                \ 'bg3': ['#3D3F3D', 'NONE'],
                \ 'bg4': ['#', 'NONE'],
                \ 'bg5': ['#', 'NONE'],
                \ 'bg6': ['#', 'NONE'],
                \ 'txt': ['#8F908F', 'NONE'],
                \ 'bg7': ['#', 'NONE']
                \ }
        elseif a:variant_name == 'jade'
            let background = {
                \ 'bg0': ['#013121', 'NONE'],
                \ 'bg1': ['#053525', 'NONE'],
                \ 'bg2': ['#0B3B3B', 'NONE'], 
                \ 'txt': ['#8F908F', 'NONE'],
                \ 'bg3': ['#0F3F3F', 'NONE']
                \ }
        endif 
    elseif &background ==# 'light'
        finish
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
