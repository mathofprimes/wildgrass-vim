" colorscheme file for wildgrass,

" reset colors to defaults so we can define new ones
hi clear

if exists("syntax_on")
    syntax reset
endif

" name
let g:colors_name= 'wildgrass'

set termguicolors

" Palette {
"     PAPER GREEN: #B0C555
"     
"     CHARCOAL GREEN: #242624
"     CHARCOAL GREEN: #262826
"     CHARCOAL GREEN: #283028
"    
"     LIGHT GRAY GREEN: #757575

"     BRIGHT YELLOW GREEN: #FEFF00
"     CYAN GREEN: #00E090
"     BRONZE GREEN: #878700
"     PURE GREEN: #00FF00
"     SLATE GREEN: #00C070
"     TURQUOISE GREEN: #F00000 
"     FADED GREEN: 5A8C35
" }

" SYNTAX GROUPS (see :h group-name):

" light gray green
hi Comment cterm=italic ctermfg=NONE ctermbg=NONE gui=italic guifg=#757575 guibg=NONE

" cyan green 
hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
hi String cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
hi Character cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
hi Number cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
hi Boolean cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
hi Float cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
    
" pure green
hi Identifier cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE
hi Function cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE

" bronze green
hi Statement cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#878700 guibg=NONE
hi Conditional cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#878700 guibg=NONE
hi Repeat cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#878700 guibg=NONE
hi Label cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#878700 guibg=NONE
hi Operator cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#878700 guibg=NONE
hi Keyword cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#878700 guibg=NONE
hi Exception cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#878700 guibg=NONE

" faded green
hi PreProc cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#5A8C35 guibg=NONE
hi Include cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#5A8C35 guibg=NONE
hi Define cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#5A8C35 guibg=NONE
hi Macro cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#5A8C35 guibg=NONE
hi PreCondit cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#5A8C35 guibg=NONE

" slate green
hi Type cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00C070 guibg=NONE
hi StorageClass cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00C070 guibg=NONE
hi Structure cterm =NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00C070 guibg=NONE
hi Typedef cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00C070 guibg=NONE

" specials (#FEFF00, yellow)
hi Special cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FEFF00 guibg=NONE
hi SpecialChar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FEFF00 guibg=NONE
hi Tag cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FEFF00 guibg=NONE
hi Deliminator cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FEFF00 guibg=NONE
hi SpecialComment cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FEFF00 guibg=NONE
hi Debug cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FEFF00 guibg=NONE

" others (#50C0A0, blue green)
hi Underlined cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi Ignore cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi Error cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi Todo cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE

" HIGHLIGHTING GROUPS (see :h hi-groups): 

" main colors
hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#BCC952 guibg=#242523
hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#CC00FF guibg=NONE

hi Conceal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi CursorIM cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE
hi Cursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi lCursor cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE

hi Directory cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00
hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00C070 guibg=NONE
hi DiffChange cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00C070 guibg=NONE
hi DiffDelete cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00C070 guibg=NONE
hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#111111 guibg=#00C070

" errors, messages, warnings
hi ModeMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#FEFF00 guibg=NONE
hi MoreMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#FEFF00 guibg=NONE
hi ErrorMsg cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#FEFF00 guibg=NONE
hi WarningMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#FEFF00 guibg=NONE

" column-, line-related groups
hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#262826 guibg=NONE
hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#262826
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#262826
hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=#262826
hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#262826
hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#262826
hi EndOfBuffer cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#757575 guibg=#262826
hi LineNr cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00FF00 guibg=#242624
hi LineNrAbove cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#757575 guibg=#262826
hi LineNrBelow cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#757575 guibg=#262826
hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi VertSplit cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE

" various code highlighting
hi IncSearch cterm=NONE ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#283028
hi Search cterm=NONE ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi Visual cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi VisualNOS cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE

" set to paper green
hi NonText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C555 guibg=NONE

" popup menu
hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C555 guibg=#283028
hi PmenuSel cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#242624 guibg=#B0C555 
hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE
hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE

hi Question cterm=NONE ctermfg=NONE ctermfg=NONE gui=bold guifg=#FEFF00 guibg=NONE
hi QuickFixLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFFFF guibg=NONE

hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FEFF00 guibg=NONE

" spelling errors
hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=#FEFF00 
hi SpellCap cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE
hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE
hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE

" statusline
hi StatusLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi StatusLineNC ctermfg=NONE ctermbg=NONE gui=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi StatusLineTerm cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi StatusLineTermNC cterm=NONE ctermfg=NONE

hi Title cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FEFF00 guifg=NONE

hi TabLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE
hi TabLineSel cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#50C0A0 guibg=NONE

hi WildMenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FEFF00 guibg=#293028

" gvim colors
