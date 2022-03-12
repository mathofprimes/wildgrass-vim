function! wildgrass#gray()
    if &background ==# 'dark'
        let variant_palette = {
            \ 'bg0': ['#2F302F', 'NONE'],
            \ 'bg1': ['#323332', 'NONE'],
            \ 'bg2': ['#353635', 'NONE'],
            \ 'bg3': ['#383938', 'NONE'],
            \ 'txt': ['#DFE0DF', 'NONE'],
            \ 'im0': ['#184830', 'NONE'],
            \ 'im1': ['#304818', 'NONE'],
            \ 'im2': ['#00C0C0', 'NONE'],
            \ 'im3': ['#C0C000', 'NONE'],
            \ 'sn0': ['#5F605F', 'NONE'],
            \ 'sn1': ['#00A060', 'NONE'],
            \ 'sn2': ['#8EA000', 'NONE'],
            \ 'sn3': ['#00A08E', 'NONE'],
            \ 'sn4': ['#00A060', 'NONE'],
            \ 'sn5': ['#80A060', 'NONE'],
            \ 'sn6': ['#60A080', 'NONE'],
            \ 'sn7': ['#60A09E', 'NONE'],
            \ 'ot0': ['NONE', 'NONE'],
            \ 'ot1': ['bold', 'bold'],
            \ 'ot2': ['italic', 'italic'],
            \ 'ot3': ['reverse', 'reverse'],
            \ 'ot4': ['underline', 'underline'],
            \ 'ot5': ['undercurl', 'undercurl']
            \ }
    elseif &background ==# 'light'
        let palette = {
            \ 'bg0': ['#DFE0DF', 'NONE'],
            \ 'bg1': ['#DCDDDC', 'NONE'],
            \ 'bg2': ['#CFD0CF', 'NONE'],
            \ 'bg3': ['#CCCDCC', 'NONE'],
            \ 'txt': ['#2F302F', 'NONE'],
            \ 'im0': ['#184830', 'NONE'],
            \ 'im1': ['#304818', 'NONE'],
            \ 'im2': ['#00C0C0', 'NONE'],
            \ 'im3': ['#C0C000', 'NONE'],
            \ 'sn0': ['#6E806E', 'NONE'],
            \ 'sn1': ['#008000', 'NONE'],
            \ 'sn2': ['#6E8000', 'NONE'],
            \ 'sn3': ['#00A08E', 'NONE'],
            \ 'sn4': ['#00A060', 'NONE'],
            \ 'sn5': ['#80A060', 'NONE'],
            \ 'sn6': ['#60A080', 'NONE'],
            \ 'sn7': ['#60A09E', 'NONE'],
            \ 'ot0': ['NONE', 'NONE'],
            \ 'ot1': ['bold', 'bold'],
            \ 'ot2': ['italic', 'italic'],
            \ 'ot3': ['reverse', 'reverse'],
            \ 'ot4': ['underline', 'underline'],
            \ 'ot5': ['undercurl', 'undercurl']
            \ }
    endif
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
