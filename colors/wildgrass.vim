" colorscheme file for wildgrass,

hi clear

if exists('syntax_on')
    syntax reset
endif

if has('termguicolors')
    set termguicolors
endif

let g:colors_name = 'wildgrass'

if &background == 'dark'
    
    " SYNTAX GROUPS (see :h group-name):

    " commenting (light gray 2) 
    hi Comment cterm=italic ctermfg=NONE ctermbg=NONE 
    hi Comment gui=italic guifg=#6E706E guibg=NONE guisp=NONE

    " characters (jade) 
    hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE  
    hi Constant gui=NONE guifg=#00A066 guibg=NONE guisp=NONE
    hi String cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi String gui=NONE guifg=#00A066 guibg=NONE guisp=NONE
    hi Character cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Character gui=NONE guifg=#00A066 guibg=NONE guisp=NONE
    hi Number cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Number gui=NONE guifg=#00A066 guibg=NONE guisp=NONE
    hi Boolean cterm=NONE ctermfg=NONE ctermbg=NONE
    hi Boolean gui=NONE guifg=#00A066 guibg=NONE guisp=NONE
    hi Float cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Float gui=NONE guifg=#00A066 guibg=NONE guisp=NONE

    " functions (green)
    hi Identifier cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE 
    hi Identifier guifg=#00A000 guibg=NONE guisp=NONE
    hi Function cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Function gui=NONE guifg=#00A000 guibg=NONE guisp=NONE

    " operators (bronze)
    hi Statement cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Statement gui=NONE guifg=#9EA000 guibg=NONE guisp=NONE
    hi Conditional cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Conditional gui=NONE guifg=#9EA000 guibg=NONE guisp=NONE
    hi Repeat cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Repeat gui=NONE guifg=#9EA000 guibg=NONE guisp=NONE
    hi Label cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Label gui=NONE guifg=#9EA000 guibg=NONE guisp=NONE
    hi Operator cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Operator gui=NONE guifg=#9EA000 guibg=NONE guisp=NONE
    hi Keyword cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Keyword gui=NONE guifg=#9EA000 guibg=NONE guisp=NONE
    hi Exception cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Exception gui=NONE guifg=#9EA000 guibg=NONE guisp=NONE

    " conditionals (patina)
    hi PreProc cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PreProc gui=NONE guifg=#80A060 guibg=NONE guisp=NONE
    hi Include cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Include gui=NONE guifg=#80A060 guibg=NONE guisp=NONE
    hi Define cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Define gui=NONE guifg=#80A060 guibg=NONE guisp=NONE
    hi Macro cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Macro gui=NONE guifg=#80A060 guibg=NONE guisp=NONE
    hi PreCondit cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PreCondit gui=NONE guifg=#80A060 guibg=NONE guisp=NONE
    
    " typedefs (faded)
    hi Type cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Type gui=NONE guifg=#60A080 guibg=NONE guisp=NONE
    hi StorageClass cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StorageClass gui=NONE guifg=#60A080 guibg=NONE guisp=NONE
    hi Structure cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Structure gui=NONE guifg=#60A080 guibg=NONE guisp=NONE
    hi Typedef cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Typedef gui=NONE guifg=#60A080 guibg=NONE guisp=NONE
    
    " specials (earth)
    hi Special cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Special gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi SpecialChar cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpecialChar gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi Tag cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Tag gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi Deliminator cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Deliminator gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi SpecialComment cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpecialComment gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi Debug cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Debug gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    
    " errors, messages (turquoise) 
    hi Underlined cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Underlined gui=NONE guifg=#00908F guibg=NONE guisp=NONE
    hi Ignore cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Ignore gui=NONE guifg=#00908F guibg=NONE guisp=NONE
    hi Error cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Error gui=NONE guifg=#00908F guibg=NONE guisp=NONE
    hi Todo cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Todo gui=NONE guifg=#00908F guibg=NONE guisp=NONE
    
    " HIGHLIGHTING GROUPS (see :h hi-groups):
    
    " main colors
    hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Normal gui=NONE guifg=#B0B462 guibg=#242822 guisp=NONE
    hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Terminal gui=NONE guifg=#B0B462 guibg=#242822 guisp=NONE
    
    " cursors
    hi Conceal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Conceal gui=NONE guifg=#303428 guibg=NONE guisp=NONE
    hi Cursor cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi Cursor gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi CursorIM cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi CursorIM gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi lCursor cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi lCursor gui=reverse guifg=NONE guibg=NONE guisp=NONE
    
    " column, line, rows, splits
    hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi ColorColumn gui=NONE guifg=NONE guibg=#282C24 guisp=NONE
    hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#282C24 guisp=NONE
    hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE
    hi CursorLine gui=NONE guifg=NONE guibg=#282C24 guisp=NONE
    hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineNr gui=NONE guifg=#B0B462 guibg=#282C24 guisp=NONE
    hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineSign gui=NONE guifg=#7E807E guibg=#2C3026 guisp=NONE
    hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineFold gui=NONE guifg=#7E807E guibg=#2C3026 guisp=NONE
    hi EndOfBuffer cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi EndOfBuffer gui=NONE guifg=#B0B462 guibg=#242822 guisp=NONE
    hi LineNr cterm=bold ctermfg=NONE ctermbg=NONE 
    hi LineNr gui=bold guifg=#B0B462 guibg=#303428 guisp=NONE
    hi LineNrAbove cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrAbove gui=NONE guifg=#7E807E guibg=#303428 guisp=NONE
    hi LineNrBelow cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrBelow gui=NONE guifg=#8E908E guibg=#2C3026 guisp=NONE
    hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Folded gui=NONE guifg=#7E807E guibg=#2C3026 guisp=NONE
    hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi FoldColumn gui=NONE guifg=#7E807E guibg=#2C3026 guisp=NONE
    hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SignColumn gui=NONE guifg=#7E807E guibg=#2C3026 guisp=NONE
    hi VertSplit cterm=bold ctermfg=NONE ctermbg=NONE 
    hi VertSplit gui=bold guifg=#7E807E guibg=#2C3026 guisp=NONE

    " directories
    hi Directory cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Directory gui=NONE guifg=#00A000 guibg=NONE guisp=NONE

    " diffs
    hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffAdd gui=NONE guifg=#00908F guibg=#303428 guisp=NONE
    hi DiffChange cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffChange gui=NONE guifg=#00908F guibg=#2C3026 guisp=NONE
    hi DiffDelete cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffDelete gui=NONE guifg=#00908F guibg=#282C24 guisp=NONE
    hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffText gui=NONE guifg=#00908F guibg=#242822 guisp=NONE
    
    " code highlighting 
    hi IncSearch cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi IncSearch gui=NONE guifg=#006664 guibg=#00EEEC guisp=NONE
    hi Search cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Search gui=NONE guifg=#646600 guibg=#ECEE00 guisp=NONE
    hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi MatchParen gui=NONE guifg=#B0B462 guibg=#2C3026 guisp=NONE
    hi Visual cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Visual gui=NONE guifg=NONE guibg=#303428 guisp=NONE
    hi VisualNOS cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi VisualNOS gui=NONE guifg=NONE guibg=#303428 guisp=NONE

    " errors, messages, warnings
    hi ModeMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi ModeMsg gui=bold guifg=#00EEEC guibg=NONE guisp=NONE
    hi MoreMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi MoreMsg gui=bold guifg=#ECEE00 guibg=NONE guisp=NONE
    hi ErrorMsg cterm=bold ctermfg=NONE ctermbg=NONE 
    hi ErrorMsg gui=bold guifg=#ECEE00 guibg=NONE guisp=NONE
    hi WarningMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi WarningMsg gui=bold guifg=#ECEE00 guibg=NONE guisp=NONE

    " popup menu
    hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Pmenu gui=NONE guifg=#B0B462 guibg=#303428 guisp=NONE
    hi PmenuSel cterm=bold ctermfg=NONE ctermbg=NONE 
    hi PmenuSel gui=bold guifg=#242822 guibg=#B0B462 guisp=NONE 
    hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PmenuSbar gui=NONE guifg=NONE guibg=#7E807E guisp=NONE
    hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PmenuThumb gui=NONE guifg=NONE guibg=#8E908E guisp=NONE

    " statusline
    hi StatusLine cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLine gui=NONE guifg=#B0B462 guibg=#303428 guisp=NONE
    hi StatusLineNC cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLineNC gui=NONE gui=NONE guifg=#8E908E guibg=NONE guisp=NONE
    hi StatusLineTerm cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLineTerm gui=NONE guifg=#B0B462 guibg=#303428 guisp=NONE
    hi StatusLineTermNC cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLineTermNC gui=NONE guifg=#8E908E guibg=NONE guisp=NONE

    " spelling, spelling errors
    hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE 
    hi SpellBad gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#FFFE00 
    hi SpellCap cterm=undercurl ctermfg=NONE ctermbg=NONE 
    hi SpellCap gui=undercurl guifg=NONE guibg=NONE guisp=NONE guisp=#00EEEC
    hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpellLocal gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#00EEEC 
    hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpellRare gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#00EEEC

    " tablines
    hi TabLine cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi TabLine gui=NONE guifg=#B0B462 guibg=NONE guisp=NONE
    hi TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi TabLineFill gui=NONE guifg=#ECEE00 guibg=#282C24 guisp=NONE
    hi TabLineSel cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi TabLineSel gui=NONE guifg=#00EEEC guibg=#2C3026 guisp=NONE
    
    " misc
    hi Question cterm=NONE ctermfg=NONE ctermfg=NONE 
    hi Question gui=NONE guifg=#ECEE00 guibg=#2C3026 guisp=NONE
    hi QuickFixLine cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi QuickFixLine gui=bold guifg=#00EEEC guibg=#2C3026 guisp=NONE
    hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpecialKey gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi Title cterm=bold ctermfg=NONE ctermbg=NONE 
    hi Title gui=bold guifg=#60A09E guibg=NONE guisp=NONE
    hi WildMenu cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi WildMenu gui=NONE guifg=#B0B462 guibg=#8E908E guisp=NONE
    hi NonText cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi NonText gui=NONE guifg=#B0B462 guibg=NONE guisp=NONE
else
    
    " SYNTAX GROUPS (see :h group-name):

    " commenting (light gray 3)
    hi Comment cterm=italic ctermfg=NONE ctermbg=NONE 
    hi Comment gui=italic guifg=#5E605E guibg=NONE guisp=NONE
 
    " characters, values (jade)
    hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Constant gui=NONE guifg=#008044 guibg=NONE guisp=NONE
    hi String cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi String gui=NONE guifg=#008044 guibg=NONE guisp=NONE
    hi Character cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Character gui=NONE guifg=#008044 guibg=NONE guisp=NONE
    hi Number cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Number gui=NONE guifg=#008044 guibg=NONE guisp=NONE
    hi Boolean cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Boolean gui=NONE guifg=#008044 guibg=NONE guisp=NONE
    hi Float cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Float gui=NONE guifg=#008044 guibg=NONE guisp=NONE
 
    " functions (green)
    hi Identifier cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE 
    hi Identifier guifg=#008000 guibg=NONE guisp=NONE
    hi Function cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Function gui=NONE guifg=#008000 guibg=NONE guisp=NONE
    
    " operators (bronze)
    hi Statement cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Statement gui=NONE guifg=#7E8000 guibg=NONE guisp=NONE
    hi Conditional cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Conditional gui=NONE guifg=#7E8000 guibg=NONE guisp=NONE
    hi Repeat cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Repeat gui=NONE guifg=#7E8000 guibg=NONE guisp=NONE
    hi Label cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Label gui=NONE guifg=#7E8000 guibg=NONE guisp=NONE
    hi Operator cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Operator gui=NONE guifg=#7E8000 guibg=NONE guisp=NONE
    hi Keyword cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Keyword gui=NONE guifg=#7E8000 guibg=NONE guisp=NONE
    hi Exception cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Exception gui=NONE guifg=#7E8000 guibg=NONE guisp=NONE
     
    " conditionals (patina)
    hi PreProc cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PreProc gui=NONE guifg=#608040 guibg=NONE guisp=NONE
    hi Include cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Include gui=NONE guifg=#608040 guibg=NONE guisp=NONE
    hi Define cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Define gui=NONE guifg=#608040 guibg=NONE guisp=NONE
    hi Macro cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Macro gui=NONE guifg=#608040 guibg=NONE guisp=NONE
    hi PreCondit cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PreCondit gui=NONE guifg=#608040 guibg=NONE guisp=NONE
    
    " typedefs (faded)
    hi Type cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Type gui=NONE guifg=#408060 guibg=NONE guisp=NONE
    hi StorageClass cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StorageClass gui=NONE guifg=#408060 guibg=NONE guisp=NONE
    hi Structure cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Structure gui=NONE guifg=#408060 guibg=NONE guisp=NONE
    hi Typedef cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Typedef gui=NONE guifg=#408060 guibg=NONE guisp=NONE
    
    " specials (earth)
    hi Special cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Special gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi SpecialChar cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpecialChar gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi Tag cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Tag gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi Deliminator cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Deliminator gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi SpecialComment cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpecialComment gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi Debug cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Debug gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    
    " errors, messages (turquoise) 
    hi Underlined cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Underlined gui=NONE guifg=#00807E guibg=NONE guisp=NONE
    hi Ignore cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Ignore gui=NONE guifg=#00807E guibg=NONE guisp=NONE
    hi Error cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Error gui=NONE guifg=#00807E guibg=NONE guisp=NONE
    hi Todo cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Todo gui=NONE guifg=#00807E guibg=NONE guisp=NONE
    
    " HIGHLIGHTING GROUPS (see :h highlight-groups): 
    
    " main colors
    hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Normal gui=NONE guifg=#232423 guibg=#B0B462 guisp=NONE
    hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Terminal gui=NONE guifg=#232423 guibg=#B0B462 guisp=NONE
   
    " cursors
    hi Conceal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Conceal gui=NONE guifg=#303428 guibg=NONE guisp=NONE
    hi Cursor cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi Cursor gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi CursorIM cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi CursorIM gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi lCursor cterm=reverse ctermfg=NONE ctermbg=NONE 
    hi lCursor gui=reverse guifg=NONE guibg=NONE guisp=NONE
    
    " column, line, row groups
    hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi ColorColumn gui=NONE guifg=NONE guibg=#ACB064 guisp=NONE
    hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#ACB064 guisp=NONE 
    hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE
    hi CursorLine gui=NONE guifg=NONE guibg=#ACB064 guisp=NONE
    hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineNr gui=NONE guifg=#242822 guibg=#ACB064 guisp=NONE
    hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineSign gui=NONE guifg=#242822 guibg=#ACB064 guisp=NONE
    hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineFold gui=NONE guifg=#5E605E guibg=#A8AC66 guisp=NONE
    hi EndOfBuffer cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi EndOfBuffer gui=NONE guifg=#242822 guibg=#B0B462 guisp=NONE
    hi LineNr cterm=bold ctermfg=NONE ctermbg=NONE 
    hi LineNr gui=bold guifg=#242822 guibg=#ACB064 guisp=NONE
    hi LineNrAbove cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrAbove gui=NONE guifg=#7E807E guibg=#A4A868 guisp=NONE
    hi LineNrBelow cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrBelow gui=NONE guifg=#5E605E guibg=#A8AC66 guisp=NONE
    hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Folded gui=NONE guifg=#5E605E guibg=#A8AC66 guisp=NONE
    hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi FoldColumn gui=NONE guifg=#5E605E guibg=#A8AC66 guisp=NONE
    hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SignColumn gui=NONE guifg=#5E605E guibg=#A8AC66 guisp=NONE
    hi VertSplit cterm=bold ctermfg=NONE ctermbg=NONE 
    hi VertSplit gui=bold guifg=#5E605E guibg=#A8AC66 guisp=NONE

    " directories
    hi Directory cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Directory gui=NONE guifg=#008000 guibg=NONE guisp=NONE

    " diffs
    hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffAdd gui=NONE guifg=#00807E guibg=#A4A868 guisp=NONE
    hi DiffChange cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffChange gui=NONE guifg=#00807E guibg=#A8AC66 guisp=NONE
    hi DiffDelete cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffDelete gui=NONE guifg=#00807E guibg=#ACB064 guisp=NONE
    hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi DiffText gui=NONE guifg=#00807E guibg=#B0B462 guisp=NONE
    
    " code highlighting 
    hi IncSearch cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi IncSearch gui=NONE guifg=#00EEEC guibg=#006664 guisp=NONE
    hi Search cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Search gui=NONE guifg=#ECEE00 guibg=#646600 guisp=NONE
    hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi MatchParen gui=NONE guifg=#242822 guibg=#A8AC66 guisp=NONE
    hi Visual cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Visual gui=NONE guifg=NONE guibg=#A4A868 guisp=NONE
    hi VisualNOS cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi VisualNOS gui=NONE guifg=NONE guibg=#A4A868 guisp=NONE

    " errors, messages, warnings
    hi ModeMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi ModeMsg gui=bold guifg=#006664 guibg=NONE guisp=NONE
    hi MoreMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi MoreMsg gui=bold guifg=#646600 guibg=NONE guisp=NONE
    hi ErrorMsg cterm=bold ctermfg=NONE ctermbg=NONE 
    hi ErrorMsg gui=bold guifg=#646600 guibg=NONE guisp=NONE
    hi WarningMsg cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi WarningMsg gui=bold guifg=#646600 guibg=NONE guisp=NONE

    " popup menu
    hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Pmenu gui=NONE guifg=#242822 guibg=#A4A868 guisp=NONE
    hi PmenuSel cterm=bold ctermfg=NONE ctermbg=NONE 
    hi PmenuSel gui=bold guifg=#B0B462 guibg=#242822 guisp=NONE 
    hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PmenuSbar gui=NONE guifg=NONE guibg=#5E605E guisp=NONE
    hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PmenuThumb gui=NONE guifg=NONE guibg=#6E706E guisp=NONE

    " statusline
    hi StatusLine cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLine gui=NONE guifg=#242822 guibg=#A4A868 guisp=NONE
    hi StatusLineNC cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLineNC gui=NONE gui=NONE guifg=#6E706E guibg=#A4A868 guisp=NONE
    hi StatusLineTerm cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLineTerm gui=NONE guifg=#242822 guibg=#A4A868 guisp=NONE
    hi StatusLineTermNC cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StatusLineTermNC gui=NONE guifg=#6E706E guibg=#A4A868 guisp=NONE
    
    " spelling, spelling errors
    hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE 
    hi SpellBad gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#646600 
    hi SpellCap cterm=undercurl ctermfg=NONE ctermbg=NONE 
    hi SpellCap gui=undercurl guifg=NONE guibg=NONE guisp=NONE guisp=#006664
    hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpellLocal gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#006664 
    hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpellRare gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#006664

    " tablines
    hi TabLine cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi TabLine gui=NONE guifg=#242822 guibg=#A4A868 guisp=NONE
    hi TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi TabLineFill gui=NONE guifg=#646600 guibg=#A8AC66 guisp=NONE
    hi TabLineSel cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi TabLineSel gui=NONE guifg=#006664 guibg=#ACB064 guisp=NONE
    
    " misc
    hi Question cterm=NONE ctermfg=NONE ctermfg=NONE 
    hi Question gui=NONE guifg=#646600 guibg=#ACB064 guisp=NONE
    hi QuickFixLine cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi QuickFixLine gui=NONE guifg=#006664 guibg=#ACB064 guisp=NONE
    hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpecialKey gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi Title cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Title gui=bold guifg=#40807E guibg=NONE guisp=NONE
    hi WildMenu cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi WildMenu gui=NONE guifg=#243820 guibg=#6E706E guisp=NONE
    hi NonText cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi NonText gui=NONE guifg=#242822 guibg=NONE guisp=NONE
endif
