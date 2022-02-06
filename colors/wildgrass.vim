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

"     BRIGHT YELLOW GREEN: #F0FF00
"     CYAN GREEN: #00E090
"     BRONZE GREEN: #909000
"     PURE GREEN: #00FF00
"     SLATE GREEN: #55B095
"     TURQUOISE GREEN: #009090 
"     FADED GREEN: 5A8C35
" }

" SYNTAX GROUPS (see :h group-name):

hi Comment cterm=italic ctermfg=NONE ctermbg=NONE gui=italic guifg=#757575 guibg=NONE

" cyan green 
hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
hi String cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
hi Character cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
hi Number cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
hi Boolean cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
hi Float cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00E090 guibg=NONE
    
" pure green
hi Identifier guifg=#00FF00
hi Function guifg=#00FF00

" bronze green
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

" types (#55B095, slate green)
hi Type guifg=#55B095
hi StorageClass guifg=#55B095
hi Structure guifg=#55B095
hi Typedef guifg=#55B095

" specials (#FFFF00, yellow)
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
" Organized in a way that makes sense

" main colors
hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#BCC952 guibg=#242523
hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#CC00FF guibg=NONE


hi Conceal guifg=#50C0A0
hi CursorIM cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE
hi Cursor gui=reverse
hi lCursor cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE

hi Directory cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00
hi DiffAdd guifg=#55B095
hi DiffChange guifg=#55B095
hi DiffDelete guifg=#55B095
hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#55B095 guibg=#FFFFFF


" yellow green

" messages and errors
hi ModeMsg gui=bold guifg=#FFFF00
hi MoreMsg gui=bold guifg=#FFFF00
hi ErrorMsg cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#FFFF00 guibg=NONE

hi IncSearch gui=reverse

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

hi MatchParen guibg=#283028

" set to paper green
hi NonText guifg=#B0C555

" popup menu
hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C555 guibg=#283028
hi PmenuSel cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#242624 guibg=#B0C555 
hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE
hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE

hi Question gui=bold guifg=#FFFF00
hi QuickFixLine guifg=#FFFFFF

hi Search gui=reverse

hi SpecialKey guifg=#FFFF00

hi SpellBad guifg=#FFFF00 gui=underline
hi SpellCap guifg=#FFFF00 gui=underline
hi SpellLocal guifg=#FFFF00 gui=underline
hi SpellRare guifg=#FFFF00 gui=underline 

hi StatusLine guifg=#50C0A0
hi StatusLineNC guifg=#50C0A0
hi StatusLineTerm cterm=NONE ctermfg=NONE
hi StatusLineTermNC cterm=NONE ctermfg=NONE


hi Title guifg=#FFFF00

hi Visual guifg=#50C0A0
hi VisualNOS guifg=#50C0A0

hi TabLine guifg=#50C0A0
hi TabLineFill guifg=#50C0A0
hi TabLineSel guifg=#50C0A0

hi WarningMsg gui=bold guifg=#FFFF00
hi WildMenu guifg=#FFFF00 guibg=#293028

" gvim additional colors?
