hi clear

if exists('syntax_on')
    syntax reset
endif

if has('termguicolors')
    set termguicolors
endif

let g:colors_name = 'wildgrass'

let s:c = wildgrass#configuration()
let s:p = wildgrass#generate_palette(s:c.wildgrass_dark, s:c.wildgrass_light, s:c.wildgrass_contrast)

" SYNTAX GROUPS (see :h group-name):

call wildgrass#HL('Comment', s:p.itlc, s:p.gray, s:p.none, s:p.none)

call wildgrass#HL('Constant', s:p.none, s:p.jade, s:p.none, s:p.none)
call wildgrass#HL('String', s:p.none, s:p.jade, s:p.none, s:p.none)
call wildgrass#HL('Character', s:p.none, s:p.jade, s:p.none, s:p.none)
call wildgrass#HL('Number', s:p.none, s:p.jade, s:p.none, s:p.none)
call wildgrass#HL('Boolean', s:p.none, s:p.jade, s:p.none, s:p.none)
call wildgrass#HL('Float', s:p.none, s:p.jade, s:p.none, s:p.none)

call wildgrass#HL('Identifier', s:p.none, s:p.pure, s:p.none, s:p.none)
call wildgrass#HL('Function', s:p.none, s:p.lime, s:p.none, s:p.none)

call wildgrass#HL('Statement', s:p.none, s:p.pear, s:p.none, s:p.none)
call wildgrass#HL('Conditional', s:p.none, s:p.pear, s:p.none, s:p.none)
call wildgrass#HL('Repeat', s:p.none, s:p.pear, s:p.none, s:p.none)
call wildgrass#HL('Label', s:p.none, s:p.pear, s:p.none, s:p.none)
call wildgrass#HL('Operator', s:p.none, s:p.pear, s:p.none, s:p.none)
call wildgrass#HL('Keyword', s:p.none, s:p.pear, s:p.none, s:p.none)
call wildgrass#HL('Exception', s:p.none, s:p.pear, s:p.none, s:p.none)

call wildgrass#HL('PreProc', s:p.none, s:p.drab, s:p.none, s:p.none)
call wildgrass#HL('Include', s:p.none, s:p.drab, s:p.none, s:p.none)
call wildgrass#HL('Define', s:p.none, s:p.drab, s:p.none, s:p.none)
call wildgrass#HL('Macro', s:p.none, s:p.drab, s:p.none, s:p.none)
call wildgrass#HL('PreCondit', s:p.none, s:p.drab, s:p.none, s:p.none)

call wildgrass#HL('Type', s:p.none, s:p.aqua, s:p.none, s:p.none)
call wildgrass#HL('StorageClass', s:p.none, s:p.aqua, s:p.none, s:p.none)
call wildgrass#HL('Structure', s:p.none, s:p.aqua, s:p.none, s:p.none)
call wildgrass#HL('Typedef', s:p.none, s:p.aqua, s:p.none, s:p.none)

call wildgrass#HL('Special', s:p.none, s:p.sage, s:p.none, s:p.none)
call wildgrass#HL('SpecialChar', s:p.none, s:p.sage, s:p.none, s:p.none)
call wildgrass#HL('Tag', s:p.none, s:p.sage, s:p.none, s:p.none)
call wildgrass#HL('Deliminator', s:p.none, s:p.sage, s:p.none, s:p.none)
call wildgrass#HL('SpecialComment', s:p.none, s:p.sage, s:p.none, s:p.none)
call wildgrass#HL('Debug', s:p.none, s:p.sage, s:p.none, s:p.none)

call wildgrass#HL('Underlined', s:p.none, s:p.teal, s:p.none, s:p.none)
call wildgrass#HL('Ignore', s:p.none, s:p.teal, s:p.none, s:p.none)
call wildgrass#HL('Error', s:p.none, s:p.teal, s:p.none, s:p.none)
call wildgrass#HL('Todo', s:p.none, s:p.teal, s:p.none, s:p.none)

" HIGHLIGHTING GROUPS (see :h hi-groups):

" modes
call wildgrass#HL('Normal', s:p.none, s:p.fg0, s:p.bg0, s:p.none)
call wildgrass#HL('Terminal', s:p.none, s:p.fg0, s:p.bg0, s:p.none)
call wildgrass#HL('Visual', s:p.none, s:p.none, s:p.bg2, s:p.none)
call wildgrass#HL('VisualNos', s:p.none, s:p.none, s:p.bg2, s:p.none)

" cursors
call wildgrass#HL('Cursor', s:p.rvrs, s:p.none, s:p.none, s:p.none)
call wildgrass#HL('lCursor', s:p.rvrs, s:p.none, s:p.none, s:p.none)
call wildgrass#HL('CursorIM', s:p.rvrs, s:p.none, s:p.none, s:p.none)
call wildgrass#HL('CursorColumn', s:p.none, s:p.none, s:p.bg1, s:p.none)
call wildgrass#HL('CursorLine', s:p.none, s:p.none, s:p.bg1, s:p.none)
call wildgrass#HL('CursorLineFold', s:p.none, s:p.fg0, s:p.bg0, s:p.none)
call wildgrass#HL('CursorLineNr', s:p.none, s:p.fg3, s:p.bg1, s:p.none)
call wildgrass#HL('CursorLineSign', s:p.none, s:p.fg0, s:p.bg0, s:p.none)

" columns, lines
call wildgrass#HL('ColorColumn', s:p.none, s:p.none, s:p.bg1, s:p.none)
call wildgrass#HL('EndOfBuffer', s:p.none, s:p.fg0, s:p.bg0, s:p.none)
call wildgrass#HL('LineNr', s:p.bold, s:p.fg3, s:p.bg1, s:p.none)
call wildgrass#HL('LineNrAbove', s:p.none, s:p.gray, s:p.none, s:p.none)
call wildgrass#HL('LineNrBelow', s:p.none, s:p.gray, s:p.none, s:p.none)
call wildgrass#HL('SignColumn', s:p.none, s:p.fg0, s:p.none, s:p.none)
call wildgrass#HL('VertSplit', s:p.none, s:p.fg0, s:p.none, s:p.none) 

" messages
call wildgrass#HL('ErrorMsg', s:p.bold, s:p.pear, s:p.none, s:p.none)
call wildgrass#HL('ModeMsg', s:p.bold, s:p.teal, s:p.none, s:p.none)
call wildgrass#HL('MoreMsg', s:p.bold, s:p.lime, s:p.none, s:p.none) 
call wildgrass#HL('WarningMsg', s:p.bold, s:p.pear, s:p.none, s:p.none)

" popup menu
call wildgrass#HL('Pmenu', s:p.none, s:p.none, s:p.bg3, s:p.none)
call wildgrass#HL('PmenuSbar', s:p.none, s:p.fg0, s:p.none, s:p.none)
call wildgrass#HL('PmenuSel', s:p.none, s:p.bg0, s:p.fg0, s:p.none)
call wildgrass#HL('PmenuThumb', s:p.none, s:p.fg0, s:p.none, s:p.none)

" search
call wildgrass#HL('IncSearch', s:p.none, s:p.bg0, s:p.pear, s:p.none)
call wildgrass#HL('MatchParen', s:p.bold, s:p.fg3, s:p.none, s:p.none)
call wildgrass#HL('Search', s:p.none, s:p.bg0, s:p.teal, s:p.none)
hi link WildMenu IncSearch

" folds
call wildgrass#HL('Folded', s:p.none, s:p.gray, s:p.bg3, s:p.none)
call wildgrass#HL('FoldColumn', s:p.bold, s:p.fg0, s:p.bg3, s:p.none)

" diffs
call wildgrass#HL('DiffAdd', s:p.bold, s:p.lime, s:p.bg2, s:p.none)
call wildgrass#HL('DiffChange', s:p.bold, s:p.pear, s:p.bg2, s:p.none)
call wildgrass#HL('DiffDelete', s:p.bold, s:p.drab, s:p.bg2, s:p.none)
call wildgrass#HL('DiffText', s:p.bold, s:p.fg0, s:p.bg2, s:p.none) 

" spellcheckers
call wildgrass#HL('SpellBad', s:p.undl, s:p.none, s:p.none, s:p.pear)
call wildgrass#HL('SpellCap', s:p.undl, s:p.none, s:p.none, s:p.lime)
call wildgrass#HL('SpellLocal', s:p.undl, s:p.none, s:p.none, s:p.drab)
call wildgrass#HL('SpellRare', s:p.undl, s:p.none, s:p.none, s:p.jade)

" statuslines
call wildgrass#HL('StatusLine', s:p.none, s:p.fg0, s:p.bg3, s:p.none)
call wildgrass#HL('StatusLineNC', s:p.none, s:p.fg0, s:p.bg0, s:p.none)
call wildgrass#HL('StatusLineTerm', s:p.none, s:p.fg0, s:p.bg3, s:p.none)
call wildgrass#HL('StatusLineTermNC', s:p.none, s:p.fg0, s:p.bg0, s:p.none)

" tablines
call wildgrass#HL('TabLine', s:p.none, s:p.fg0, s:p.bg1, s:p.none)
call wildgrass#HL('TabLineFill', s:p.none, s:p.fg0, s:p.bg2, s:p.none)
call wildgrass#HL('TabLineSel', s:p.none, s:p.fg0, s:p.bg3, s:p.none)

" misc
call wildgrass#HL('Conceal', s:p.none, s:p.lime, s:p.none, s:p.none)
call wildgrass#HL('Directory', s:p.none, s:p.teal, s:p.none, s:p.none)
call wildgrass#HL('NonText', s:p.none, s:p.fg0, s:p.none, s:p.none)
call wildgrass#HL('Question', s:p.none, s:p.aqua, s:p.none, s:p.none)
call wildgrass#HL('QuickFixLine', s:p.none, s:p.bg0, s:p.lime, s:p.none)
call wildgrass#HL('SpecialKey', s:p.bold, s:p.teal, s:p.bg3, s:p.none)
call wildgrass#HL('Title', s:p.none, s:p.pear, s:p.bg3, s:p.none)
