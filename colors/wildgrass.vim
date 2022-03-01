" colorscheme file for wildgrass

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

    " comments (light gray) 
    hi Comment cterm=italic ctermfg=NONE ctermbg=NONE gui=italic guifg=#4E604C guibg=NONE guisp=NONE
 
    hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00A066 guibg=NONE guisp=NONE
    hi String cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00A066 guibg=NONE guisp=NONE
    hi Character cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00A066 guibg=NONE guisp=NONE
    hi Number cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00A066 guibg=NONE guisp=NONE
    hi Boolean cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00A066 guibg=NONE guisp=NONE
    hi Float cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00A066 guibg=NONE guisp=NONE

    hi Identifier cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00A000 guibg=NONE guisp=NONE
    hi Function cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00A000 guibg=NONE guisp=NONE
    
    hi Statement cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#8EA000 guibg=NONE guisp=NONE
    hi Conditional cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#8EA000 guibg=NONE guisp=NONE
    hi Repeat cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#8EA000 guibg=NONE guisp=NONE
    hi Label cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#8EA000 guibg=NONE guisp=NONE
    hi Operator cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#8EA000 guibg=NONE guisp=NONE
    hi Keyword cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#8EA000 guibg=NONE guisp=NONE
    hi Exception cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#8EA000 guibg=NONE guisp=NONE

    hi PreProc cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#80A060 guibg=NONE guisp=NONE
    hi Include cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#80A060 guibg=NONE guisp=NONE
    hi Define cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#80A060 guibg=NONE guisp=NONE
    hi Macro cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#80A060 guibg=NONE guisp=NONE
    hi PreCondit cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#80A060 guibg=NONE guisp=NONE
    
    hi Type cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#60A080 guibg=NONE guisp=NONE
    hi StorageClass cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#60A080 guibg=NONE guisp=NONE
    hi Structure cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#60A080 guibg=NONE guisp=NONE
    hi Typedef cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#60A080 guibg=NONE guisp=NONE
    
    hi Special cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi SpecialChar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi Tag cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi Deliminator cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi SpecialComment cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi Debug cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    
    hi Underlined cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00908F guibg=NONE guisp=NONE
    hi Ignore cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00908F guibg=NONE guisp=NONE
    hi Error cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00908F guibg=NONE guisp=NONE
    hi Todo cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00908F guibg=NONE guisp=NONE
    
    " HIGHLIGHTING GROUPS (see :h hi-groups):
    
    hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#64C864 guibg=#142814 guisp=NONE
    hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#64C864 guibg=#142814 guisp=NONE
    
    hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#172E17 guisp=NONE
    hi Conceal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#1D3A1D guibg=NONE guisp=NONE
    hi Cursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi lCursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi CursorIM cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#172E17 guisp=NONE
    hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#172E17 guisp=NONE
    
    hi Directory cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00A000 guibg=NONE guisp=NONE

    hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00908F guibg=#1D3A1D guisp=NONE
    hi DiffChange cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00908F guibg=#1A341A guisp=NONE
    hi DiffDelete cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00908F guibg=#172E17 guisp=NONE
    hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00908F guibg=#142814 guisp=NONE
    
    hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#64C864 guibg=#172E17 guisp=NONE
    hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE
    hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE
    hi EndOfBuffer cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#64C864 guibg=#142814 guisp=NONE
    hi LineNr cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#64C864 guibg=#1D3A1D guisp=NONE
    hi LineNrAbove cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#1D3A1D guibg=NONE guisp=NONE
    hi LineNrBelow cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#1A341A guibg=NONE guisp=NONE
    hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE
    hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE
    hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E807E guibg=#1A341A guisp=NONE
    hi VertSplit cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#7E807E guibg=#1A341A guisp=NONE

    hi IncSearch cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#006664 guibg=#00EEEC guisp=NONE
    hi Search cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#646600 guibg=#ECEE00 guisp=NONE
    hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#64C864 guibg=#1A341A guisp=NONE
    hi Visual cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#1D3A1D guisp=NONE
    hi VisualNOS cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#1D3A1D guisp=NONE

    hi ModeMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#00EEEC guibg=NONE guisp=NONE
    hi MoreMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#ECEE00 guibg=NONE guisp=NONE
    hi ErrorMsg cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#ECEE00 guibg=NONE guisp=NONE
    hi WarningMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#ECEE00 guibg=NONE guisp=NONE

    hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#64C864 guibg=#1D3A1D guisp=NONE
    hi PmenuSel cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#142814 guibg=#64C864 guisp=NONE 
    hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#7E807E guisp=NONE
    hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#8E908E guisp=NONE

    hi StatusLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#64C864 guibg=#1D3A1D guisp=NONE
    hi StatusLineNC cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#8E908E guibg=NONE guisp=NONE
    hi StatusLineTerm cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#64C864 guibg=#1D3A1D guisp=NONE
    hi StatusLineTermNC cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#8E908E guibg=NONE guisp=NONE

    hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=#FFFE00 
    hi SpellCap cterm=undercurl ctermfg=NONE ctermbg=NONE gui=undercurl guifg=NONE guibg=NONE guisp=#00EEEC
    hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=#00EEEC 
    hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=#00EEEC

    hi TabLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#64C864 guibg=NONE guisp=NONE
    hi TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ECEE00 guibg=#172E17 guisp=NONE
    hi TabLineSel cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00EEEC guibg=#1A341A guisp=NONE
    
    hi Question cterm=NONE ctermfg=NONE ctermfg=NONE gui=NONE guifg=#ECEE00 guibg=#1A341A guisp=NONE
    hi QuickFixLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#00EEEC guibg=#1A341A guisp=NONE
    hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE guifg=#9EA060 guibg=NONE guisp=NONE
    hi Title cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#60A09E guibg=NONE guisp=NONE
    hi WildMenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#64C864 guibg=#8E908E guisp=NONE
    hi NonText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#64C864 guibg=NONE guisp=NONE
else
    
    " SYNTAX GROUPS (see :h group-name):

    hi Comment cterm=italic ctermfg=NONE ctermbg=NONE gui=italic guifg=#4C604E guibg=NONE guisp=NONE
 
    hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008044 guibg=NONE guisp=NONE
    hi String cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008044 guibg=NONE guisp=NONE
    hi Character cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008044 guibg=NONE guisp=NONE
    hi Number cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008044 guibg=NONE guisp=NONE
    hi Boolean cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008044 guibg=NONE guisp=NONE
    hi Float cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008044 guibg=NONE guisp=NONE
 
    hi Identifier cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008000 guibg=NONE guisp=NONE
    hi Function cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008000 guibg=NONE guisp=NONE
    
    hi Statement cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6E8000 guibg=NONE guisp=NONE
    hi Conditional cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6E8000 guibg=NONE guisp=NONE
    hi Repeat cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6E8000 guibg=NONE guisp=NONE
    hi Label cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6E8000 guibg=NONE guisp=NONE
    hi Operator cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6E8000 guibg=NONE guisp=NONE
    hi Keyword cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6E8000 guibg=NONE guisp=NONE
    hi Exception cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6E8000 guibg=NONE guisp=NONE
     
    hi PreProc cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#608040 guibg=NONE guisp=NONE
    hi Include cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#608040 guibg=NONE guisp=NONE
    hi Define cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#608040 guibg=NONE guisp=NONE
    hi Macro cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#608040 guibg=NONE guisp=NONE
    hi PreCondit cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#608040 guibg=NONE guisp=NONE
    
    hi Type cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#408060 guibg=NONE guisp=NONE
    hi StorageClass cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#408060 guibg=NONE guisp=NONE
    hi Structure cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#408060 guibg=NONE guisp=NONE
    hi Typedef cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#408060 guibg=NONE guisp=NONE
    
    hi Special cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi SpecialChar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi Tag cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi Deliminator cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi SpecialComment cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi Debug cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    
    hi Underlined cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00807E guibg=NONE guisp=NONE
    hi Ignore cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00807E guibg=NONE guisp=NONE
    hi Error cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00807E guibg=NONE guisp=NONE
    hi Todo cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00807E guibg=NONE guisp=NONE
    
    " HIGHLIGHTING GROUPS (see :h highlight-groups): 
    
    hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#232423 guibg=#64C864 guisp=NONE
    hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#232423 guibg=#64C864 guisp=NONE
   
    hi Conceal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#1D3A1D guibg=NONE guisp=NONE
    hi Cursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi CursorIM cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
    hi lCursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
    
    hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#62C462 guisp=NONE
    hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#62C462 guisp=NONE 
    hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#62C462 guisp=NONE
    hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#142814 guibg=#62C462 guisp=NONE
    hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#142814 guibg=#62C462 guisp=NONE
    hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#4C604E guibg=#60C060 guisp=NONE
    hi EndOfBuffer cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#142814 guibg=#64C864 guisp=NONE
    hi LineNr cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#142814 guibg=#62C462 guisp=NONE
    hi LineNrAbove cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#5EBC5E guibg=NONE guisp=NONE
    hi LineNrBelow cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#60C060 guibg=NONE guisp=NONE
    hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#4C604E guibg=#60C060 guisp=NONE
    hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#4C604E guibg=#60C060 guisp=NONE
    hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#4C604E guibg=#60C060 guisp=NONE
    hi VertSplit cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#4C604E guibg=#60C060 guisp=NONE

    hi Directory cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008000 guibg=NONE guisp=NONE

    hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00807E guibg=#5EBC5E guisp=NONE
    hi DiffChange cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00807E guibg=#60C060 guisp=NONE
    hi DiffDelete cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00807E guibg=#62C462 guisp=NONE
    hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00807E guibg=#64C864 guisp=NONE
    
    hi IncSearch cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00EEEC guibg=#006664 guisp=NONE
    hi Search cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ECEE00 guibg=#646600 guisp=NONE
    hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#142814 guibg=#60C060 guisp=NONE
    hi Visual cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#5EBC5E guisp=NONE
    hi VisualNOS cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#5EBC5E guisp=NONE

    hi ModeMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#006664 guibg=NONE guisp=NONE
    hi MoreMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#646600 guibg=NONE guisp=NONE
    hi ErrorMsg cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#646600 guibg=NONE guisp=NONE
    hi WarningMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#646600 guibg=NONE guisp=NONE

    hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#142814 guibg=#5EBC5E guisp=NONE
    hi PmenuSel cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#64C864 guibg=#142814 guisp=NONE 
    hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#4C604E guisp=NONE
    hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#4E604C guisp=NONE

    hi StatusLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#142814 guibg=#5EBC5E guisp=NONE
    hi StatusLineNC cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#4E604C guibg=#5EBC5E guisp=NONE
    hi StatusLineTerm cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#142814 guibg=#5EBC5E guisp=NONE
    hi StatusLineTermNC cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#4E604C guibg=#5EBC5E guisp=NONE
    
    hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=#646600 
    hi SpellCap cterm=undercurl ctermfg=NONE ctermbg=NONE gui=undercurl guifg=NONE guibg=NONE guisp=#006664
    hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=#006664 
    hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=#006664

    hi TabLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#142814 guibg=#5EBC5E guisp=NONE
    hi TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#646600 guibg=#60C060 guisp=NONE
    hi TabLineSel cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#006664 guibg=#62C462 guisp=NONE
    
    hi Question cterm=NONE ctermfg=NONE ctermfg=NONE gui=NONE guifg=#646600 guibg=#62C462 guisp=NONE
    hi QuickFixLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#006664 guibg=#62C462 guisp=NONE
    hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7E8040 guibg=NONE guisp=NONE
    hi Title cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#40807E guibg=NONE guisp=NONE
    hi WildMenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#243820 guibg=#4E604C guisp=NONE
    hi NonText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#142814 guibg=NONE guisp=NONE
endif
