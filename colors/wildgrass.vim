
hi ColorColumn guifg=#50C0A0
hi Conceal guifg=#50C0" colorscheme file for wildgrass,
" a colorscheme for vim and gvim

" reset colors to defaults so we can define new ones
hi clear

if exists("syntax_on")
    syntax reset
endif

" colorscheme name
let g:colors_name= 'wildgrass'

" MAIN:

" background/foreground

hi Cursor gui=reverse
" SYNTAX GROUPS (see :h group-name):

" comments (#99A599, light gray green)
hi Comment guifg=#99A599

" constants (cyan green)
hi Constant guifg=#00D790
hi String guifg=#00D790
hi Character guifg=#00D790
hi Number guifg=#00D790
hi Boolean guifg=#00D790
hi Float guifg=#00D790
    
" variables (#00B700, pure green)
hi Identifier guifg=#00B700
hi Function guifg=#00B700

" keywords (#A98020, burnt)
hi Statement guifg=#A98020
hi Conditional guifg=#A98020
hi Repeat guifg=#A98020
hi Label guifg=#A98020
hi Operator guifg=#A98020
hi Keyword guifg=#A98020
hi Exception guifg=#A98020

" metas (#5A8C35, camo green)
hi PreProc guifg=#5A8C35
hi Include guifg=#5A8C35
hi Define guifg=#5A8C35
hi Macro guifg=#5A8C35
hi PreCondit guifg=#5A8C35

" types (#707F7C, slate green)
hi Type guifg=#707F7C
hi StorageClass guifg=#707F7C
hi Structure guifg=#707F7C
hi Typedef guifg=#707F7C

" specials (#CCCC00, yellow)
hi Special guifg=#5CCCC0
hi SpecialChar guifg=#ACCCC0
hi Tag guifg=#ACCCC0
hi Deliminator guifg=#9CCCC0
hi SpecialComment guifg=#7CCCC0
hi Debug guifg=#CCCCC0

" others (#50C0A0, blue green)
hi Underlined guifg=#50C0A0
hi Ignore guifg=#50C0A0
hi Error guifg=#50C0A0
hi Todo guifg=#50C0A0

" HIGHLIGHTING GROUPS (see :h hi-groups): 

hi ColorColumn guifg=#50C0A0

hi CursorColumn term=standout ctermfg=NONE guibg=#293028 gui=NONE
hi Conceal guifg=#50C0A0
" hi CursorIM
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#293028
" hi lCursor

hi Directory
hi DiffAdd guifg=#707F7C
hi DiffChange guifg=#707F7C
hi DiffDelete guifg=#707F7C
hi DiffText guifg=#707F7C

hi EndOfBuffer guifg=#707F7C
hi ErrorMsg gui=bold guifg=#CCCC00

hi VertSplit guifg=#50C0A0

hi Folded guifg=#50C0A0
hi FoldColumn guifg=#50C0A0
hi SignColumn guifg=#50C0A0

hi IncSearch gui=reverse

hi LineNr guifg=#99A599
hi LineNrAbove guifg=#55FF77
hi LineNrBelow guifg=#55FF00

hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00B700 guibg=#293028
hi CursorLineSign gui=NONE guifg=#00B700
hi CursorLineFold gui=NONE guifg=#00B700

hi MatchParen guibg=#293028

hi ModeMsg gui=bold guifg=#CCCC00
hi MoreMsg gui=bold guifg=#CCCC00

hi NonText guifg=#FFFFFF

hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#BCC952 guibg=#242523

hi Pmenu cterm=NONE ctermfg=NONE guifg=#00B700
hi PmenuSel guifg=#00B700
hi PmenuSbar guifg=#00B700
hi PmenuThumb guifg=#00B700

hi Question gui=bold guifg=#CCCC00
hi QuickFixLine guifg=#FFFFFF

hi Search gui=reverse


hi SpecialKey guifg=#CCCC00

hi SpellBad guifg=#CCCC00 gui=underline
hi SpellCap guifg=#CCCC00 gui=underline
hi SpellLocal guifg=#CCCC00 gui=underline
hi SpellRare guifg=#CCCC00 gui=underline 

hi StatusLine guifg=#50C0A0
hi StatusLineNC guifg=#50C0A0
hi StatusLineTerm cterm=NONE ctermfg=NONE
hi StatusLineTermNC cterm=NONE ctermfg=NONE

hi Terminal guifg=#CC00ff

hi Title guifg=#CCCC00

hi Visual guifg=#50C0A0
hi VisualNOS guifg=#50C0A0

hi TabLine guifg=#50C0A0
hi TabLineFill guifg=#50C0A0
hi TabLineSel guifg=#50C0A0

hi WarningMsg gui=bold guifg=#CCCC00
hi WildMenu guifg=#CCCC00 guibg=#293028


" gvim additional colors?
hi Directory guifg=#50C0A0
hi VertSplit guifg=#50C0A0
hi Folded guifg=#50C0A0
hi FoldColumn guifg=#50C0A0
hi SignColumn guifg=#50C0A0

hi MatchParen guibg=#293028
hi SpecialKey guifg=#CCCC00
hi Title guifg=#CCCC00
hi WildMenu guifg=#CCCC00 guibg=#293028

" end of color file
