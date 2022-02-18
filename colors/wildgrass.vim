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

    " commenting
    hi Comment cterm=italic ctermfg=NONE ctermbg=NONE 
    hi Comment gui=italic guifg=#5B5C5A guibg=NONE guisp=NONE

    " characters, values (sea green)  
    hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Constant gui=NONE guifg=#00D57F guibg=NONE guisp=NONE
    hi String cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi String gui=NONE guifg=#00D57F guibg=NONE guisp=NONE
    hi Character cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Character gui=NONE guifg=#00D57F guibg=NONE guisp=NONE
    hi Number cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Number gui=NONE guifg=#00D57F guibg=NONE guisp=NONE
    hi Boolean cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Boolean gui=NONE guifg=#00D57F guibg=NONE guisp=NONE
    hi Float cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Float gui=NONE guifg=#00D57F guibg=NONE guisp=NONE

    " functions (pure green)
    hi Identifier cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE 
    hi Identifier guifg=#00C000 guibg=NONE guisp=NONE
    hi Function cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Function gui=NONE guifg=#00C000 guibg=NONE guisp=NONE

    " operators (bronze green)
    hi Statement cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Statement gui=NONE guifg=#737500 guibg=NONE guisp=NONE
    hi Conditional cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Conditional gui=NONE guifg=#737500 guibg=NONE guisp=NONE
    hi Repeat cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Repeat gui=NONE guifg=#737500 guibg=NONE guisp=NONE
    hi Label cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Label gui=NONE guifg=#737500 guibg=NONE guisp=NONE
    hi Operator cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Operator gui=NONE guifg=#737500 guibg=NONE guisp=NONE
    hi Keyword cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Keyword gui=NONE guifg=#737500 guibg=NONE guisp=NONE
    hi Exception cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Exception gui=NONE guifg=#737500 guibg=NONE guisp=NONE

    " conditionals (patina green)
    hi PreProc cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PreProc gui=NONE guifg=#709F50 guibg=NONE guisp=NONE
    hi Include cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Include gui=NONE guifg=#709F50 guibg=NONE guisp=NONE
    hi Define cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Define gui=NONE guifg=#709F50 guibg=NONE guisp=NONE
    hi Macro cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Macro gui=NONE guifg=#709F50 guibg=NONE guisp=NONE
    hi PreCondit cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PreCondit gui=NONE guifg=#709F50 guibg=NONE guisp=NONE
    
    " typedefs (slate green)
    hi Type cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Type gui=NONE guifg=#509070 guibg=NONE guisp=NONE
    hi StorageClass cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StorageClass gui=NONE guifg=#509070 guibg=NONE guisp=NONE
    hi Structure cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Structure gui=NONE guifg=#509070 guibg=NONE guisp=NONE
    hi Typedef cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Typedef gui=NONE guifg=#509070 guibg=NONE guisp=NONE
    
    " specials (gold green)
    hi Special cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Special gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
    hi SpecialChar cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpecialChar gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
    hi Tag cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Tag gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
    hi Deliminator cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Deliminator gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
    hi SpecialComment cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpecialComment gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
    hi Debug cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Debug gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
    
    " errors, messages (turquoise green) 
    hi Underlined cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Underlined gui=NONE guifg=#009590 guibg=NONE guisp=NONE
    hi Ignore cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Ignore gui=NONE guifg=#009590 guibg=NONE guisp=NONE
    hi Error cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Error gui=NONE guifg=#009590 guibg=NONE guisp=NONE
    hi Todo cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Todo gui=NONE guifg=#009590 guibg=NONE guisp=NONE
    
    " HIGHLIGHTING GROUPS (see :h hi-groups):
    
    " main colors
    hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Normal gui=NONE guifg=#B0B950 guibg=#202320 guisp=NONE
    hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Terminal gui=NONE guifg=#B0B950 guibg=#202320 guisp=NONE
    
    " column, line, rows, splits
    hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi ColorColumn gui=NONE guifg=NONE guibg=#232521 guisp=NONE
    hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#202723 guisp=NONE
    hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE
    hi CursorLine gui=NONE guifg=NONE guibg=#202723 guisp=NONE
    hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineNr gui=NONE guifg=#B0B950 guibg=#232523 guisp=NONE
    hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineSign gui=NONE guifg=NONE guibg=#293029 guisp=NONE
    hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineFold gui=NONE guifg=NONE guibg=#293029 guisp=NONE
    hi EndOfBuffer cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi EndOfBuffer gui=NONE guifg=#B0B950 guibg=#202320 guisp=NONE
    hi LineNr cterm=bold ctermfg=NONE ctermbg=NONE 
    hi LineNr gui=bold guifg=#B0B950 guibg=#242524 guisp=NONE
    hi LineNrAbove cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrAbove gui=NONE guifg=#5B5C5A guibg=#202F29 guisp=NONE
    hi LineNrBelow cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrBelow gui=NONE guifg=#9B9C9A guibg=#202B26 guisp=NONE
    hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Folded gui=NONE guifg=#009590 guibg=#293029 guisp=NONE
    hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi FoldColumn gui=NONE guifg=#009590 guibg=#293029 guisp=NONE
    hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SignColumn gui=NONE guifg=#B0B950 guibg=#262726 guisp=NONE
    hi VertSplit cterm=bold ctermfg=NONE ctermbg=NONE 
    hi VertSplit gui=bold guifg=#6A6C6B guibg=#232423 guisp=NONE
else
    " SYNTAX GROUPS (see :h group-name):

    " commenting
    hi Comment cterm=italic ctermfg=NONE ctermbg=NONE 
    hi Comment gui=italic guifg=#4B4C4A guibg=NONE guisp=NONE
 
    " characters, values 
    hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Constant gui=NONE guifg=#00953F guibg=NONE guisp=NONE
    hi String cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi String gui=NONE guifg=#00953F guibg=NONE guisp=NONE
    hi Character cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Character gui=NONE guifg=#00953F guibg=NONE guisp=NONE
    hi Number cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Number gui=NONE guifg=#00953F guibg=NONE guisp=NONE
    hi Boolean cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Boolean gui=NONE guifg=#00953F guibg=NONE guisp=NONE
    hi Float cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Float gui=NONE guifg=#00953F guibg=NONE guisp=NONE
 
    " functions
    hi Identifier cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE 
    hi Identifier guifg=#006000 guibg=NONE guisp=NONE
    hi Function cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Function gui=NONE guifg=#006000 guibg=NONE guisp=NONE
    
    " operators (bronze green)
    hi Statement cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Statement gui=NONE guifg=#333500 guibg=NONE guisp=NONE
    hi Conditional cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Conditional gui=NONE guifg=#333500 guibg=NONE guisp=NONE
    hi Repeat cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Repeat gui=NONE guifg=#333500 guibg=NONE guisp=NONE
    hi Label cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Label gui=NONE guifg=#333500 guibg=NONE guisp=NONE
    hi Operator cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Operator gui=NONE guifg=#333500 guibg=NONE guisp=NONE
    hi Keyword cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Keyword gui=NONE guifg=#333500 guibg=NONE guisp=NONE
    hi Exception cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Exception gui=NONE guifg=#333500 guibg=NONE guisp=NONE
     
    " conditionals (patina green)
    hi PreProc cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PreProc gui=NONE guifg=#305F10 guibg=NONE guisp=NONE
    hi Include cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Include gui=NONE guifg=#305F10 guibg=NONE guisp=NONE
    hi Define cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Define gui=NONE guifg=#305F10 guibg=NONE guisp=NONE
    hi Macro cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Macro gui=NONE guifg=#305F10 guibg=NONE guisp=NONE
    hi PreCondit cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi PreCondit gui=NONE guifg=#305F10 guibg=NONE guisp=NONE
    
    " typedefs (slate green)
    hi Type cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Type gui=NONE guifg=#307050 guibg=NONE guisp=NONE
    hi StorageClass cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi StorageClass gui=NONE guifg=#307050 guibg=NONE guisp=NONE
    hi Structure cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Structure gui=NONE guifg=#307050 guibg=NONE guisp=NONE
    hi Typedef cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Typedef gui=NONE guifg=#307050 guibg=NONE guisp=NONE
    
    " specials (gold green)
    hi Special cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Special gui=NONE guifg=#60AF00 guibg=NONE guisp=NONE
    hi SpecialChar cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpecialChar gui=NONE guifg=#60AF00 guibg=NONE guisp=NONE
    hi Tag cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Tag gui=NONE guifg=#60AF00 guibg=NONE guisp=NONE
    hi Deliminator cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Deliminator gui=NONE guifg=#60AF00 guibg=NONE guisp=NONE
    hi SpecialComment cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SpecialComment gui=NONE guifg=#60AF00 guibg=NONE guisp=NONE
    hi Debug cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Debug gui=NONE guifg=#60AF00 guibg=NONE guisp=NONE
    
    " errors, messages (turquoise green) 
    hi Underlined cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Underlined gui=NONE guifg=#007570 guibg=NONE guisp=NONE
    hi Ignore cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Ignore gui=NONE guifg=#007570 guibg=NONE guisp=NONE
    hi Error cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Error gui=NONE guifg=#007570 guibg=NONE guisp=NONE
    hi Todo cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Todo gui=NONE guifg=#007570 guibg=NONE guisp=NONE
    
    " HIGHLIGHTING GROUPS (see :h hi-groups): 
    
    " main colors
    hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Normal gui=NONE guifg=#232423 guibg=#B0B950 guisp=NONE
    hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Terminal gui=NONE guifg=#232423 guibg=#B0B950 guisp=NONE
   
    " column, line, row groups
    hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi ColorColumn gui=NONE guifg=NONE guibg=#90B650 guisp=NONE
    hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#90B650 guisp=NONE 
    hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE
    hi CursorLine gui=NONE guifg=NONE guibg=#90B650 guisp=NONE
    hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineNr gui=NONE guifg=#232423 guibg=#90B650 guisp=NONE
    hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineSign gui=NONE guifg=NONE guibg=#293029 guisp=NONE
    hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi CursorLineFold gui=NONE guifg=NONE guibg=#293029 guisp=NONE
    hi EndOfBuffer cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi EndOfBuffer gui=NONE guifg=#B0B950 guibg=#323332 guisp=NONE
    hi LineNr cterm=bold ctermfg=NONE ctermbg=NONE 
    hi LineNr gui=bold guifg=#232423 guibg=#B0B950 guisp=NONE
    hi LineNrAbove cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrAbove gui=NONE guifg=#7B7C7A guibg=#30B050 guisp=NONE
    hi LineNrBelow cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi LineNrBelow gui=NONE guifg=#5B5C5A guibg=#60B350 guisp=NONE
    hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi Folded gui=NONE guifg=#009590 guibg=#293029 guisp=NONE
    hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi FoldColumn gui=NONE guifg=#009590 guibg=#293029 guisp=NONE
    hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE 
    hi SignColumn gui=NONE guifg=#B0B950 guibg=#262726 guisp=NONE
    hi VertSplit cterm=bold ctermfg=NONE ctermbg=NONE 
    hi VertSplit gui=bold guifg=#6A6C6B guibg=#232423 guisp=NONE

endif

" The rest need to be added to the if else statement,
" but are dark mode colors

" cursor related
hi Conceal        cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#283028 guibg=NONE guisp=NONE
hi Cursor         cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
hi CursorIM       cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
hi lCursor        cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE

" directories
hi Directory      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CC90 guibg=NONE guisp=NONE

" diffs
hi DiffAdd        cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0B950 guibg=#262726 guisp=NONE
hi DiffChange     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0B950 guibg=#262726 guisp=NONE
hi DiffDelete     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0B950 guibg=#262726 guisp=NONE
hi DiffText       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0B950 guibg=#262726 guisp=NONE

" errors, messages, warnings
hi ModeMsg        cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#90CF00 guibg=NONE guisp=NONE
hi MoreMsg        cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#90CF00 guibg=NONE guisp=NONE
hi ErrorMsg       cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#90CF00 guibg=NONE guisp=NONE
hi WarningMsg     cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#90CF00 guibg=NONE guisp=NONE


" various code highlighting 
hi IncSearch      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#232423 guibg=#00FFFE guisp=NONE
hi MatchParen     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#323332 guisp=NONE
hi Search         cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#232423 guibg=#FEFF00 guisp=NONE
hi Visual         cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#323332 guisp=NONE
hi VisualNOS      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#323332 guisp=NONE

" popup menu
hi Pmenu          cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0B950 guibg=#323332 guisp=NONE
hi PmenuSel       cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#232423 guibg=#B0B950 guisp=NONE 
hi PmenuSbar      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0B950 guibg=NONE guisp=NONE
hi PmenuThumb     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0B950 guibg=NONE guisp=NONE

" misc
hi Question       cterm=NONE ctermfg=NONE ctermfg=NONE gui=bold guifg=#FEFF00 guibg=#262726 guisp=NONE
hi QuickFixLine   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FFFE guibg=#262726 guisp=NONE
hi SpecialKey     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
hi Title            cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
hi WildMenu         cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=#293029 guisp=NONE
hi NonText          cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0B950 guibg=NONE guisp=NONE

" spelling, spelling errors
hi SpellBad         cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#FFFE00 
hi SpellCap         cterm=undercurl ctermfg=NONE ctermbg=NONE gui=undercurl guifg=NONE guibg=NONE guisp=NONE guisp=#00FFFE
hi SpellLocal       cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#009590 
hi SpellRare        cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#00FF00

" statusline
hi StatusLine       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi StatusLineNC     ctermfg=NONE ctermbg=NONE gui=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi StatusLineTerm   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi StatusLineTermNC cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE

" tablines
hi TabLine          cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi TabLineFill      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi TabLineSel       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
