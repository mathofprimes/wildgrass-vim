function! wildgrass#get_configuration()
    return {'style': get(g:, 'wildgrass_style', 'green')}
endfunction

function! wildgrass#get_varient(varient)
    if a:varient == 'green'
        if &background ==# 'dark'
            let palette = {
                \ 'bg0': ['#003000', 'NONE'],
                \ 'bg1': ['#005000', 'NONE'],
                \ 'bg2': ['#007000', 'NONE'],
                \ 'bg3': ['#009000', 'NONE'],
                \ 'mode0': ['#184830', 'NONE'],
                \ 'mode1': ['#304818', 'NONE'],
                \ 'syn0': ['6E806E', 'NONE'],
                \ 'syn1': ['00A000', 'NONE'],
                \ 'syn2': ['8EA000', 'NONE'],
                \ 'syn3': ['00A08E', 'NONE'],
                \ 'syn4': ['00A060', 'NONE'],
                \ 'syn5': ['80A060', 'NONE'],
                \ 'syn6': ['60A080', 'NONE'],
                \ 'syn7': ['60A09E', 'NONE'],
                \ 'syn8': ['9EA060', 'NONE'],
                \ 'none': ['NONE', 'NONE']
                \ }
        elseif &background ==# 'light'
            let palette = {
                \ 'light0': ['#00D000', 'NONE']
                \ }
        endif
    endif
endfunction

function! wildgrass#hl(group, bg, fg, ...)
    execute 'highlight' a:group
        \ 'cterm=' . a:fg[0]
        \ 'ctermfg=' . a:fg[0]
        \ 'ctermbg=' . a:bg[0]
        \ 'gui=' . a:bg[1]
        \ 'guifg=' . a:fg[1]
        \ 'guibg=' . a:bg[1]
        \ 'guisp=' . a:bg[1]
endfunction
