" default dark wildgrass palette, default light palette
if &background ==# 'dark'
    " bg = background, im = important, sn = syntax, ot = other
    let wildgrass#palette = {
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
        \ 'sn1': ['#00A000', 'NONE'],
        \ 'sn2': ['#8EA000', 'NONE'],
        \ 'sn3': ['#00A08E', 'NONE'],
        \ 'sn4': ['#00A060', 'NONE'],
        \ 'sn5': ['#80A060', 'NONE'],
        \ 'sn6': ['#60A080', 'NONE'],
        \ 'sn7': ['#60A09E', 'NONE'],
        \ 'sn8': ['#9EA060', 'NONE'],
        \ 'ot0': ['NONE', 'NONE'],
        \ 'ot1': ['bold', 'bold'],
        \ 'ot2': ['underline', 'underline'],
        \ 'ot3': ['undercurl', 'undercurl']
        \ }
elseif &background ==# 'light'
    let wildgrass#palette = {
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
        \ 'sn1': ['#00A000', 'NONE'],
        \ 'sn2': ['#8EA000', 'NONE'],
        \ 'sn3': ['#00A08E', 'NONE'],
        \ 'sn4': ['#00A060', 'NONE'],
        \ 'sn5': ['#80A060', 'NONE'],
        \ 'sn6': ['#60A080', 'NONE'],
        \ 'sn7': ['#60A09E', 'NONE'],
        \ 'sn8': ['#9EA060', 'NONE'],
        \ 'ot0': ['NONE', 'NONE'],
        \ 'ot1': ['bold', 'bold'],
        \ 'ot2': ['underline', 'underline'],
        \ 'ot3': ['undercurl', 'undercurl']
        \ }
endif

" add a message to tell user if they don't use
" a valid variant

let wildgrass#variant = 'gray'

function! wildgrass#variant()
    if wildgrass#variant ==# 'gray'
        return wildgrass#palette
    elseif wildgrass#variant ==# 'green'
        let wildgrass#palette.bg0 = ['#003000', 'NONE']
        let wildgrass#palette.bg1 = ['']
        let wildgrass#palette.bg2 = ['']
        let wildgrass#palette.bg3 = ['']
        let wildgrass#palette.sp1 = ['']
    elseif wildgrass#variant ==# ''
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
