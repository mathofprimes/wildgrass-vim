" colorscheme file for wildgrass

hi clear

if exists('syntax_on')
    syntax reset
endif

if has('termguicolors')
    set termguicolors
endif

let g:colors_name = 'wildgrass'

let s:p = wildgrass#variant_palette(wildgrass#config_dark().variant_dark, wildgrass#config_light().variant_light)

" SYNTAX GROUPS (see :h group-name):

" comments (light gray) 
call wildgrass#HL('Comment', s:p.none, s:p.gray, s:p.none, s:p.none)

" characters (jade)
call wildgrass#HL('Constant', s:p.none, s:p.jade, s:p.none, s:p.none)
hi link String Constant  
hi link Character Constant  
hi link Number Constant 
hi link Boolean Constant
hi link Float Constant

" functions (lime)
call wildgrass#HL('Identifier', s:p.none, s:p.lime, s:p.none, s:p.none)
call wildgrass#HL('Function', s:p.none, s:p.lime, s:p.none, s:p.none)

" keywords (pear)
call wildgrass#HL('Statement', s:p.none, s:p.pear, s:p.none, s:p.none)
hi link Conditional Statement 
hi link Repeat Statement  
hi link Label Statement
hi link Operator Statement 
hi link Keyword Statement 
hi link Exception Statement 

call wildgrass#HL('PreProc', s:p.none, s:p.drab, s:p.none, s:p.none)
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc

call wildgrass#HL('Type', s:p.none, s:p.aqua, s:p.none, s:p.none)
hi link StorageClass Type
hi link Structure Type 
hi link Typedef Type 

call wildgrass#HL('Special', s:p.none, s:p.sage, s:p.none, s:p.none)
hi link SpecialChar Special 
hi link Tag Special
hi link Deliminator Special
hi link SpecialComment Special
hi link Debug Special

call wildgrass#HL('Underlined', s:p.none, s:p.teal, s:p.none, s:p.none)
hi link Ignore Underlined 
hi link Error Underlined  
hi link Todo Underlined

" HIGHLIGHTING GROUPS (see :h hi-groups):

" modes
call wildgrass#HL('Normal', s:p.none, s:p.bg4, s:p.bg0, s:p.none)
hi link Terminal Normal 
call wildgrass#HL('Visual', s:p.none, s:p.none, s:p.bg2, s:p.none)
hi link VisualNOS Visual 

" cursors
call wildgrass#HL('Cursor', s:p.reverse, s:p.none, s:p.none, s:p.none)
hi link lCursor Cursor  
hi link CursorIM Cursor
call wildgrass#HL('CursorColumn', s:p.none, s:p.none, s:p.bg1, s:p.none)
call wildgrass#HL('CursorLine', s:p.none, s:p.none, s:p.bg1, s:p.none)
hi link CursorLineFold Normal
call wildgrass#HL('CursorLineNr', s:p.none, s:p.bg7, s:p.none, s:p.none)
hi link CursorLineSign Normal

" columns, lines
call wildgrass#HL('ColorColumn', s:p.none, s:p.none, s:p.bg1, s:p.none)
hi link EndOfBuffer Normal  
call wildgrass#HL('LineNr', s:p.none, s:p.bg7, s:p.none, s:p.none)
call wildgrass#HL('LineNrAbove', s:p.none, s:p.gray, s:p.none, s:p.none)
call wildgrass#HL('LineNrBelow', s:p.none, s:p.aqua, s:p.none, s:p.none)
call wildgrass#HL('SignColumn', s:p.none, s:p.bg4, s:p.none, s:p.none)
hi link VertSplit Normal 

" messages
call wildgrass#HL('ErrorMsg', s:p.none, s:p.pear, s:p.none, s:p.none)
call wildgrass#HL('ModeMsg', s:p.none, s:p.teal, s:p.none, s:p.none)
call wildgrass#HL('MoreMsg', s:p.none, s:p.lime, s:p.none, s:p.none) 
call wildgrass#HL('WarningMsg', s:p.none, s:p.pear, s:p.none, s:p.none)

" popup menu
call wildgrass#HL('Pmenu', s:p.none, s:p.none, s:p.bg3, s:p.none)
call wildgrass#HL('PmenuSbar', s:p.none, s:p.bg4, s:p.none, s:p.none)
call wildgrass#HL('PmenuSel', s:p.none, s:p.bg0, s:p.bg4, s:p.none)
call wildgrass#HL('PmenuThumb', s:p.none, s:p.bg4, s:p.none, s:p.none)

" search
call wildgrass#HL('IncSearch', s:p.none, s:p.bg7, s:p.pear, s:p.none)
call wildgrass#HL('MatchParen', s:p.none, s:p.bg7, s:p.none, s:p.none)
call wildgrass#HL('Search', s:p.none, s:p.bg7, s:p.teal, s:p.none)
hi link WildMenu IncSearch

" folds
call wildgrass#HL('Folded', s:p.none, s:p.gray, s:p.bg3, s:p.none)
call wildgrass#HL('FoldColumn', s:p.bold, s:p.bg4, s:p.bg3, s:p.none)

" diffs
call wildgrass#HL('DiffAdd', s:p.bold, s:p.lime, s:p.bg2, s:p.none)
call wildgrass#HL('DiffChange', s:p.bold, s:p.pear, s:p.bg2, s:p.none)
call wildgrass#HL('DiffDelete', s:p.bold, s:p.drab, s:p.bg2, s:p.none)
call wildgrass#HL('DiffText', s:p.bold, s:p.bg4, s:p.bg2, s:p.none) 

" spellcheckers
call wildgrass#HL('SpellBad', s:p.underline, s:p.none, s:p.none, s:p.pear)
call wildgrass#HL('SpellCap', s:p.underline, s:p.none, s:p.none, s:p.lime)
call wildgrass#HL('SpellLocal', s:p.underline, s:p.none, s:p.none, s:p.drab)
call wildgrass#HL('SpellRare', s:p.underline, s:p.none, s:p.none, s:p.jade)

" statuslines
call wildgrass#HL('StatusLine', s:p.none, s:p.bg4, s:p.bg3, s:p.none)
call wildgrass#HL('StatusLineNC', s:p.none, s:p.bg4, s:p.bg0, s:p.none)
call wildgrass#HL('StatusLineTerm', s:p.none, s:p.bg4, s:p.bg3, s:p.none)
call wildgrass#HL('StatusLineTermNC', s:p.none, s:p.bg4, s:p.bg0, s:p.none)

" tablines
call wildgrass#HL('TabLine', s:p.none, s:p.bg4, s:p.bg1, s:p.none)
call wildgrass#HL('TabLineFill', s:p.none, s:p.bg4, s:p.bg2, s:p.none)
call wildgrass#HL('TabLineSel', s:p.none, s:p.bg4, s:p.bg3, s:p.none)

" misc
call wildgrass#HL('Conceal', s:p.none, s:p.lime, s:p.none, s:p.none)
call wildgrass#HL('Directory', s:p.none, s:p.teal, s:p.none, s:p.none)

call wildgrass#HL('NonText', s:p.none, s:p.bg4, s:p.none, s:p.none)
call wildgrass#HL('Question', s:p.none, s:p.aqua, s:p.none, s:p.none)
call wildgrass#HL('QuickFixLine', s:p.none, s:p.bg0, s:p.lime, s:p.none)
call wildgrass#HL('SpecialKey', s:p.bold, s:p.teal, s:p.bg3, s:p.none)
call wildgrass#HL('Title', s:p.none, s:p.pear, s:p.bg3, s:p.none)
