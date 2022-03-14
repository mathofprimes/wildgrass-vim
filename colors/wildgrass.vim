" colorscheme file for wildgrass

hi clear

if exists('syntax_on')
    syntax reset
endif

if has('termguicolors')
    set termguicolors
endif

let g:colors_name = 'wildgrass'

let s:p = wildgrass#variant_palette('jade')

" SYNTAX GROUPS (see :h group-name):

" comments (light gray) 
call wildgrass#HL('Comment', s:p.ot0, s:p.gray, s:p.ot0, s:p.ot0)

" characters (jade)
call wildgrass#HL('Constant', s:p.ot0, s:p.jade, s:p.ot0, s:p.ot0)
hi link String Constant  
hi link Character Constant  
hi link Number Constant 
hi link Boolean Constant
hi link Float Constant

" functions (lime)
call wildgrass#HL('Identifier', s:p.ot0, s:p.lime, s:p.ot0, s:p.ot0)
hi link Function Identifier 

" keywords (pear)
call wildgrass#HL('Statement', s:p.ot0, s:p.pear, s:p.ot0, s:p.ot0)
hi link Conditional Statement 
hi link Repeat Statement  
hi link Label Statement
hi link Operator Statement 
hi link Keyword Statement 
hi link Exception Statement 

call wildgrass#HL('PreProc', s:p.ot0, s:p.drab, s:p.ot0, s:p.ot0)
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc

call wildgrass#HL('Type', s:p.ot0, s:p.aqua, s:p.ot0, s:p.ot0)
hi link StorageClass Type
hi link Structure Type 
hi link Typedef Type 

call wildgrass#HL('Special', s:p.ot0, s:p.sage, s:p.ot0, s:p.ot0)
hi link SpecialChar Special 
hi link Tag Special
hi link Deliminator Special
hi link SpecialComment Special
hi link Debug Special

call wildgrass#HL('Underlined', s:p.ot0, s:p.teal, s:p.ot0, s:p.ot0)
hi link Ignore Underlined 
hi link Error Underlined  
hi link Todo Underlined

" HIGHLIGHTING GROUPS (see :h hi-groups):

" modes
call wildgrass#HL('Normal', s:p.ot0, s:p.bg4, s:p.bg0, s:p.ot0)
hi link Terminal Normal 
call wildgrass#HL('Visual', s:p.ot0, s:p.ot0, s:p.bg2, s:p.ot0)
hi link VisualNOS Visual 

" cursors
call wildgrass#HL('Cursor', s:p.ot3, s:p.ot0, s:p.ot0, s:p.ot0)
hi link lCursor Cursor  
hi link CursorIM Cursor
call wildgrass#HL('CursorColumn', s:p.ot0, s:p.ot0, s:p.bg1, s:p.ot0)
call wildgrass#HL('CursorLine', s:p.ot0, s:p.ot0, s:p.bg1, s:p.ot0)
hi link CursorLineFold Normal
call wildgrass#HL('CursorLineNr', s:p.ot0, s:p.gray, s:p.ot0, s:p.ot0)
hi link CursorLineSign Normal

" columns, lines
call wildgrass#HL('ColorColumn', s:p.ot0, s:p.ot0, s:p.bg1, s:p.ot0)
hi link EndOfBuffer Normal  
call wildgrass#HL('LineNr', s:p.ot0, s:p.gray, s:p.ot0, s:p.ot0)
call wildgrass#HL('LineNrAbove', s:p.ot0, s:p.bg4, s:p.ot0, s:p.ot0)
call wildgrass#HL('LineNrBelow', s:p.ot0, s:p.bg7, s:p.ot0, s:p.ot0)
call wildgrass#HL('SignColumn', s:p.ot0, s:p.bg4, s:p.ot0, s:p.ot0)
hi link VertSplit Normal 

" messages
call wildgrass#HL('ErrorMsg', s:p.ot0, s:p.pear, s:p.ot0, s:p.ot0)
call wildgrass#HL('ModeMsg', s:p.ot0, s:p.teal, s:p.ot0, s:p.ot0)
call wildgrass#HL('MoreMsg', s:p.ot0, s:p.lime, s:p.ot0, s:p.ot0) 
call wildgrass#HL('WarningMsg', s:p.ot0, s:p.pear, s:p.ot0, s:p.ot0)

" popup menu
call wildgrass#HL('Pmenu', s:p.ot0, s:p.ot0, s:p.bg3, s:p.ot0)
call wildgrass#HL('PmenuSbar', s:p.ot0, s:p.bg4, s:p.ot0, s:p.ot0)
call wildgrass#HL('PmenuSel', s:p.ot0, s:p.bg0, s:p.bg4, s:p.ot0)
call wildgrass#HL('PmenuThumb', s:p.ot0, s:p.bg4, s:p.ot0, s:p.ot0)

" search
call wildgrass#HL('IncSearch', s:p.ot0, s:p.bg7, s:p.pear, s:p.ot0)
call wildgrass#HL('MatchParen', s:p.ot0, s:p.bg7, s:p.ot0, s:p.ot0)
call wildgrass#HL('Search', s:p.ot0, s:p.bg7, s:p.teal, s:p.ot0)
hi link WildMenu IncSearch

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
