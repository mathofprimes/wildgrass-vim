let g:colors = {
    \ 'bg0':   ['#003000', 'NONE'],
    \ 'bg1':   ['#005000', 'NONE'],
    \ 'bg2':   ['#007000', 'NONE'],
    \ 'bg3':   ['#009000', 'NONE'],
    \ 'mode0': ['#184830', 'NONE'],
    \ 'mode1': ['#304818', 'NONE'],
    \ 'mode2': ['#00C0C0', 'NONE'],
    \ 'mode3': ['#C0C000', 'NONE'],
    \ 'syn0':  ['#6E806E', 'NONE'],
    \ 'syn1':  ['#00A000', 'NONE'],
    \ 'syn2':  ['#8EA000', 'NONE'],
    \ 'syn3':  ['#00A08E', 'NONE'],
    \ 'syn4':  ['#00A060', 'NONE'],
    \ 'syn5':  ['#80A060', 'NONE'],
    \ 'syn6':  ['#60A080', 'NONE'],
    \ 'syn7':  ['#60A09E', 'NONE'],
    \ 'syn8':  ['#9EA060', 'NONE'],
    \ 'sp0':   ['NONE', 'NONE'],
    \ 'sp1':   ['bold', 'bold'],
    \ 'sp2':   ['underline', 'underline'],
    \ 'sp3' :  ['undercurl', 'undercurl']
    \ }

function! s:hl(group, cg, fg, bg, sp)
    exec 'hi' . a:group
            \ . 'cterm='   . a:cg[1]
            \ . 'ctermfg=' . a:fg[1]
            \ . 'ctermbg=' . a:bg[1]
            \ . 'gui='     . a:cg[0]
            \ . 'guifg='   . a:fg[0]
            \ . 'guibg='   . a:bg[0]
            \ . 'guisp='   . a:sp[0]
endfunction
