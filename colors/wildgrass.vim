" colorscheme file for wildgrass

hi clear

if exists('syntax_on')
    syntax reset
endif

if has('termguicolors')
    set termguicolors
endif

let g:colors_name = 'wildgrass'

let s:palette = wildgrass#gray#palette

" sets the colors of highlight groups
function! HL(group, cg, fg, bg, sp)
    exec 'hi' a:group
            \ 'cterm='   . a:cg[1]
            \ 'ctermfg=' . a:fg[1]
            \ 'ctermbg=' . a:bg[1]
            \ 'gui='     . a:cg[0]
            \ 'guifg='   . a:fg[0]
            \ 'guibg='   . a:bg[0]
            \ 'guisp='   . a:sp[0]
endfunction

" SYNTAX GROUPS (see :h group-name):

" comments (light gray) 
call HL('Comment', s:palette.ot0, s:palette.sn0, s:palette.ot0, s:palette.ot0)

" characters
call HL('Constant', s:palette.ot0, s:palette.sn1, s:palette.ot0, s:palette.ot0)
hi link String Constant  
hi link Character Constant  
hi link Number Constant 
hi link Boolean Constant
hi link Float Constant

" functions (green)
call HL('Identifier', s:palette.ot0, s:palette.sn2, s:palette.ot0, s:palette.ot0)
hi link Function Identifier 

call HL('Statement', s:palette.ot0, s:palette.sn3, s:palette.ot0, s:palette.ot0)
hi link Conditional Statement 
hi link Repeat Statement  
hi link Label Statement
hi link Operator Statement 
hi link Keyword Statement 
hi link Exception Statement 

call HL('PreProc', s:palette.ot0, s:palette.sn4, s:palette.ot0, s:palette.ot0)
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc

call HL('Type', s:palette.ot0, s:palette.sn5, s:palette.ot0, s:palette.ot0)
hi link StorageClass Type
hi link Structure Type 
hi link Typedef Type 

call HL('Special', s:palette.ot0, s:palette.sn6, s:palette.ot0, s:palette.ot0)
hi link SpecialChar Special 
hi link Tag Special
hi link Deliminator Special
hi link SpecialComment Special
hi link Debug Special

call HL('Underlined', s:palette.ot0, s:palette.sn7, s:palette.ot0, s:palette.ot0)
hi link Ignore Underlined 
hi link Error Underlined  
hi link Todo Underlined


" HIGHLIGHTING GROUPS (see :h hi-groups):

" modes
call HL('Normal', s:palette.ot0, s:palette.txt, s:palette.bg0, s:palette.ot0)
hi link Terminal Normal 
call HL('Visual', s:palette.ot0, s:palette.ot0, s:palette.bg2, s:palette.ot0)
hi link VisualNOS Visual 

" cursors
call HL('Cursor', s:palette.ot3, s:palette.ot0, s:palette.ot0, s:palette.ot0)
hi link lCursor Cursor  
hi link CursorIM Cursor
call HL('CursorColumn', s:palette.ot0, s:palette.ot0, s:palette.bg1, s:palette.ot0)
call HL('CursorLine', s:palette.ot0, s:palette.ot0, s:palette.bg1, s:palette.ot0)
hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE 
hi CursorLineFold gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE
hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE 
hi CursorLineNr gui=NONE guifg=#64C864 guibg=#172E17 guisp=NONE
hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE 
hi CursorLineSign gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE

" columns, lines
call HL('ColorColumn', s:palette.ot0, s:palette.ot0, s:palette.bg1, s:palette.ot0)
hi link EndOfBuffer Normal  
hi link LineNr Normal  
call HL('LineNrAbove', s:palette.ot0, s:palette.im0, s:palette.ot0, s:palette.ot0)
call HL('LineNrBelow', s:palette.ot0, s:palette.im1, s:palette.ot0, s:palette.ot0)
hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
hi SignColumn gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE
hi link VertSplit Normal 

" messages
hi ErrorMsg cterm=bold ctermfg=NONE ctermbg=NONE 
hi ErrorMsg gui=bold guifg=#ECEE00 guibg=NONE guisp=NONE
hi ModeMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
hi ModeMsg gui=bold guifg=#00EEEC guibg=NONE guisp=NONE
hi MoreMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
hi MoreMsg gui=bold guifg=#ECEE00 guibg=NONE guisp=NONE
hi WarningMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
hi WarningMsg gui=bold guifg=#ECEE00 guibg=NONE guisp=NONE

" popup menu
hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE 
hi Pmenu gui=NONE guifg=#64C864 guibg=#1D3A1D guisp=NONE
hi PmenuSel cterm=bold ctermfg=NONE ctermbg=NONE 
hi PmenuSel gui=bold guifg=#142814 guibg=#64C864 guisp=NONE 
hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE 
hi PmenuSel guifg=NONE guibg=#7E807E guisp=NONE
hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE 
hi PmenuThumb gui=NONE guifg=NONE guibg=#8E908E guisp=NONE

" search
hi IncSearch cterm=NONE ctermfg=NONE ctermbg=NONE 
hi IncSearch gui=NONE guifg=#006664 guibg=#00EEEC guisp=NONE
hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE 
hi MatchParen gui=NONE guifg=#64C864 guibg=#1A341A guisp=NONE
hi Search cterm=NONE ctermfg=NONE ctermbg=NONE 
hi Search gui=NONE guifg=#646600 guibg=#ECEE00 guisp=NONE
hi WildMenu cterm=NONE ctermfg=NONE ctermbg=NONE 
hi WildMenu gui=NONE guifg=#64C864 guibg=#8E908E guisp=NONE

" folds
hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE 
hi Folded gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE
hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
hi FoldColumn gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE

" diffs
hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=NONE 
hi DiffAdd gui=NONE guifg=#00908F guibg=#1D3A1D guisp=NONE
hi DiffChange cterm=NONE ctermfg=NONE ctermbg=NONE 
hi DiffChange gui=NONE guifg=#00908F guibg=#1A341A guisp=NONE
hi DiffDelete cterm=NONE ctermfg=NONE ctermbg=NONE 
hi DiffDelete gui=NONE guifg=#00908F guibg=#172E17 guisp=NONE
hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE 
hi DiffText gui=NONE guifg=#00908F guibg=#142814 guisp=NONE

" spellcheckers
hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE 
hi SpellBad gui=underline guifg=NONE guibg=NONE guisp=#FFFE00 
hi SpellCap cterm=undercurl ctermfg=NONE ctermbg=NONE 
hi SpellCap gui=undercurl guifg=NONE guibg=NONE guisp=#00EEEC
hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE 
hi SpellLocal gui=underline guifg=NONE guibg=NONE guisp=#00EEEC 
hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE 
hi SpellRare gui=underline guifg=NONE guibg=NONE guisp=#00EEEC

" statuslines
hi StatusLine cterm=NONE ctermfg=NONE ctermbg=NONE 
hi StatusLine gui=NONE guifg=#64C864 guibg=#1D3A1D guisp=NONE
hi StatusLineNC cterm=NONE ctermfg=NONE ctermbg=NONE 
hi StatusLineNC gui=NONE guifg=#8E908E guibg=NONE guisp=NONE
hi StatusLineTerm cterm=NONE ctermfg=NONE ctermbg=NONE 
hi StatusLineTerm gui=NONE guifg=#64C864 guibg=#1D3A1D guisp=NONE
hi StatusLineTermNC cterm=NONE ctermfg=NONE ctermbg=NONE 
hi StatusLineTermNC gui=NONE guifg=#8E908E guibg=NONE guisp=NONE

" tablines
hi TabLine cterm=NONE ctermfg=NONE ctermbg=NONE 
hi TabLine gui=NONE guifg=#64C864 guibg=NONE guisp=NONE
hi TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE 
hi TabLineFill gui=NONE guifg=#ECEE00 guibg=#172E17 guisp=NONE
hi TabLineSel cterm=NONE ctermfg=NONE ctermbg=NONE 
hi TabLineSel gui=NONE guifg=#00EEEC guibg=#1A341A guisp=NONE

" coloumns, lines

" misc
hi Conceal cterm=NONE ctermfg=NONE ctermbg=NONE 
hi Conceal gui=NONE guifg=#1D3A1D guibg=NONE guisp=NONE
hi Directory cterm=NONE ctermfg=NONE ctermbg=NONE 
hi Directory gui=NONE guifg=#00A000 guibg=NONE guisp=NONE
hi NonText cterm=NONE ctermfg=NONE ctermbg=NONE 
hi NonText gui=NONE guifg=#64C864 guibg=NONE guisp=NONE
hi Question cterm=NONE ctermfg=NONE ctermfg=NONE 
hi Question gui=NONE guifg=#ECEE00 guibg=#1A341A guisp=NONE
hi QuickFixLine cterm=NONE ctermfg=NONE ctermbg=NONE 
hi QuickFixLine gui=bold guifg=#00EEEC guibg=#1A341A guisp=NONE
hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE 
hi SpecialKey gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
hi Title cterm=bold ctermfg=NONE ctermbg=NONE 
hi Title gui=bold guifg=#60A09E guibg=NONE guisp=NONE
