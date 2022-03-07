" colorscheme file for wildgrass

let s:configuration = wildgrass#get_configuration
let s:varient = wildgrass#get_varient(s:configuration.style)




hi clear

if exists('syntax_on')
    syntax reset
endif

if has('termguicolors')
    set termguicolors
endif

set g:colors_name = 'wildgrass'

" SYNTAX GROUPS (see :h group-name):

" comments (light gray) 
hi Comment cterm=italic ctermfg=NONE ctermbg=NONE 
hi Comment gui=italic guifg=#4E604C guibg=NONE guisp=NONE

hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE 
hi Constant gui=NONE guifg=#00A066 guibg=NONE guisp=NONE
hi link String Constant  
hi link Character Constant  
hi link Number Constant 
hi link Boolean Constant
hi link Float Constant

hi Identifier cterm=NONE ctermfg=NONE ctermbg=NONE 
hi Identifier gui=NONE guifg=#00A000 guibg=NONE guisp=NONE
hi link Function Identifier 

call wildgrass#hl('Statement', s:varient.syn2, s:varient.none)
"hi Statement cterm=NONE ctermfg=NONE ctermbg=NONE 
"hi Statement gui=NONE guifg=#8EA000 guibg=NONE guisp=NONE
hi link Conditional Statement 
hi link Repeat Statement  
hi link Label Statement
hi link Operator Statement 
hi link Keyword Statement 
hi link Exception Statement 

hi PreProc cterm=NONE ctermfg=NONE ctermbg=NONE 
hi PreProc gui=NONE guifg=#80A060 guibg=NONE guisp=NONE
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc

hi Type cterm=NONE ctermfg=NONE ctermbg=NONE 
hi Type gui=NONE guifg=#60A080 guibg=NONE guisp=NONE
hi link StorageClass Type
hi link Structure Type 
hi link Typedef Type 

hi Special cterm=NONE ctermfg=NONE ctermbg=NONE 
hi Special gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
hi link SpecialChar Special 
hi link Tag Special
hi link Deliminator Special
hi link SpecialComment Special
hi link Debug Special

hi Underlined cterm=NONE ctermfg=NONE ctermbg=NONE 
hi Underlined gui=NONE guifg=#00908F guibg=NONE guisp=NONE
hi link Ignore Underlined 
hi link Error Underlined  
hi link Todo Underlined

if &background == 'dark'    
    " HIGHLIGHTING GROUPS (see :h hi-groups):
    
    " modes
    hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Normal gui=NONE guifg=#64C864 guibg=#142814 guisp=NONE
    hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Terminal gui=NONE guifg=#64C864 guibg=#142814 guisp=NONE
    hi Visual cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Visual gui=NONE guifg=NONE guibg=#1D3A1D guisp=NONE
    hi VisualNOS cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi VisualNOS gui=NONE guifg=NONE guibg=#1D3A1D guisp=NONE
   
    " cursors
    hi Cursor cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi Cursor gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi lCursor cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi lCursor gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi CursorIM cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi CursorIM gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorColumn gui=NONE guifg=NONE guibg=#172E17 guisp=NONE
    hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLine gui=NONE guifg=NONE guibg=#172E17 guisp=NONE
    hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineFold gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE
    hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineNr gui=NONE guifg=#64C864 guibg=#172E17 guisp=NONE
    hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineSign gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE
    
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
    
    " columns, lines
    hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi ColorColumn gui=NONE guifg=NONE guibg=#172E17 guisp=NONE
    hi EndOfBuffer cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi EndOfBuffer gui=NONE guifg=#64C864 guibg=#142814 guisp=NONE
    hi LineNr cterm=bold ctermfg=NONE ctermbg=NONE 
    hi LineNr gui=bold guifg=#64C864 guibg=#1D3A1D guisp=NONE
    hi LineNrAbove cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrAbove gui=NONE guifg=#184830 guibg=NONE guisp=NONE
    hi LineNrBelow cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrBelow gui=NONE guifg=#304818 guibg=NONE guisp=NONE 
    hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SignColumn gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE
    hi VertSplit cterm=bold ctermfg=NONE ctermbg=NONE 
    hi VertSplit gui=bold guifg=#7E807E guibg=#1A341A guisp=NONE
   
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
else
    
     " HIGHLIGHTING GROUPS (see :h highlight-groups): 
    
    hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Normal gui=NONE guifg=#232423 guibg=#64C864 guisp=NONE
    hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Terminal gui=NONE guifg=#232423 guibg=#64C864 guisp=NONE 
    hi Visual cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Visual gui=NONE guifg=NONE guibg=#5EBC5E guisp=NONE
    hi VisualNOS cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi VisualNOS gui=NONE guifg=NONE guibg=#5EBC5E guisp=NONE
    
    " cursors
    hi Cursor cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi Cursor gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi CursorIM cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi CursorIM gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi lCursor cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi lCursor gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorColumn gui=NONE guifg=NONE guibg=#62C462 guisp=NONE 
    hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLine gui=NONE guifg=NONE guibg=#62C462 guisp=NONE
    hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineNr gui=NONE guifg=#142814 guibg=#62C462 guisp=NONE
    hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineSign gui=NONE guifg=#142814 guibg=#62C462 guisp=NONE
    hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineFold gui=NONE guifg=#4C604E guibg=#60C060 guisp=NONE
   
    " columns, lines
    hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi ColorColumn gui=NONE guifg=NONE guibg=#62C462 guisp=NONE
    hi EndOfBuffer cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi EndOfBuffer gui=NONE guifg=#142814 guibg=#64C864 guisp=NONE
    hi LineNr cterm=bold ctermfg=NONE ctermbg=NONE 
    hi LineNr gui=bold guifg=#142814 guibg=#62C462 guisp=NONE
    hi LineNrAbove cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrAbove gui=NONE guifg=#5EBC5E guibg=NONE guisp=NONE
    hi LineNrBelow cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrBelow gui=NONE guifg=#60C060 guibg=NONE guisp=NONE
    hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SignColumn gui=NONE guifg=#4C604E guibg=#60C060 guisp=NONE
    hi VertSplit cterm=bold ctermfg=NONE ctermbg=NONE 
    hi VertSplit gui=bold guifg=#4C604E guibg=#60C060 guisp=NONE
    
    " folds
    hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Folded gui=NONE guifg=#4C604E guibg=#60C060 guisp=NONE
    hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi FoldColumn gui=NONE guifg=#4C604E guibg=#60C060 guisp=NONE
    

    " diffs
    hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffAdd gui=NONE guifg=#00807E guibg=#5EBC5E guisp=NONE
    hi DiffChange cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffChange gui=NONE guifg=#00807E guibg=#60C060 guisp=NONE
    hi DiffDelete cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffDelete gui=NONE guifg=#00807E guibg=#62C462 guisp=NONE
    hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffText gui=NONE guifg=#00807E guibg=#64C864 guisp=NONE
    
    hi IncSearch cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi IncSearch gui=NONE guifg=#00EEEC guibg=#006664 guisp=NONE
    hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi MatchParen gui=NONE guifg=#142814 guibg=#60C060 guisp=NONE
    hi Search cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Search gui=NONE guifg=#ECEE00 guibg=#646600 guisp=NONE
    hi WildMenu cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi WildMenu gui=NONE guifg=#243820 guibg=#4E604C guisp=NONE

    " messages
    hi ErrorMsg cterm=bold ctermfg=NONE ctermbg=NONE 
    hi ErrorMsg gui=bold guifg=#646600 guibg=NONE guisp=NONE
    hi ModeMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi ModeMsg gui=bold guifg=#006664 guibg=NONE guisp=NONE
    hi MoreMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi MoreMsg gui=bold guifg=#646600 guibg=NONE guisp=NONE
    hi WarningMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi WarningMsg gui=bold guifg=#646600 guibg=NONE guisp=NONE
    
    " popup menus
    hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Pmenu gui=NONE guifg=#142814 guibg=#5EBC5E guisp=NONE
    hi PmenuSel cterm=bold ctermfg=NONE ctermbg=NONE 
    hi PmenuSel gui=bold guifg=#64C864 guibg=#142814 guisp=NONE 
    hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PmenuSbar gui=NONE guifg=NONE guibg=#4C604E guisp=NONE
    hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PmenuThumb gui=NONE guifg=NONE guibg=#4E604C guisp=NONE

    " spellcheckers
    hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE 
    hi SpellBad gui=underline guifg=NONE guibg=NONE guisp=#646600 
    hi SpellCap cterm=undercurl ctermfg=NONE ctermbg=NONE 
    hi SpellCap gui=undercurl guifg=NONE guibg=NONE guisp=#006664
    hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpellLocal gui=underline guifg=NONE guibg=NONE guisp=#006664 
    hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpellRare gui=underline guifg=NONE guibg=NONE guisp=#006664

    " statuslines
    hi StatusLine cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLine gui=NONE guifg=#142814 guibg=#5EBC5E guisp=NONE
    hi StatusLineNC cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLineNC gui=NONE guifg=#4E604C guibg=#5EBC5E guisp=NONE
    hi StatusLineTerm cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLineTerm gui=NONE guifg=#142814 guibg=#5EBC5E guisp=NONE
    hi StatusLineTermNC cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLineTermNC gui=NONE guifg=#4E604C guibg=#5EBC5E guisp=NONE
   
    " tablines 
    hi TabLine cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi TabLine gui=NONE guifg=#142814 guibg=#5EBC5E guisp=NONE
    hi TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi TabLineFill gui=NONE guifg=#646600 guibg=#60C060 guisp=NONE
    hi TabLineSel cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi TabLineSel gui=NONE guifg=#006664 guibg=#62C462 guisp=NONE
    
    " misc
    hi Conceal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Conceal gui=NONE guifg=#1D3A1D guibg=NONE guisp=NONE
    hi Directory cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Directory gui=NONE guifg=#008000 guibg=NONE guisp=NONE
    hi NonText cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi NonText gui=NONE guifg=#142814 guibg=NONE guisp=NONE
    hi QuickFixLine cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi QuickFixLine gui=NONE guifg=#006664 guibg=#62C462 guisp=NONE
    hi Question cterm=NONE ctermfg=NONE ctermfg=NONE 
    hi Question gui=NONE guifg=#646600 guibg=#62C462 guisp=NONE
    hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpecialKey gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi Title cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Title gui=bold guifg=#40807E guibg=NONE guisp=NONE
endif
