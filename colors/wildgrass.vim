" colorscheme file for wildgrass

" reset colors to defaults so we can define new ones
hi clear

if exists("syntax_on")
    syntax reset
endif

" colorscheme name
let g:colors_name= 'wildgrass'

" set termguicolors
set termguicolors
    
    " SYNTAX GROUPS (see :h group-name):
    
    " background (#242523, dark gray green)
    " foreground (#242523, tan green)
    hi Normal guifg=#BCC952 guibg=#242523

    " comments (#99A599, light gray green)
    hi Comment guifg=#99A599

    " constants (#00D790, cyan green)
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
    highlight Special guifg=#5CCCC0
    highlight SpecialChar guifg=#ACCCC0
    highlight Tag guifg=#ACCCC0
    highlight Deliminator guifg=#9CCCC0
    highlight SpecialComment guifg=#7CCCC0
    highlight Debug guifg=#CCCCC0

    " others (#50C0A0, blue green)
    hi Underlined guifg=#50C0A0
    hi Ignore guifg=#50C0A0
    hi Error guifg=#50C0A0
    hi Todo guifg=#50C0A0

    " HIGHLIGHTING GROUPS (see :h highlight-groups): 
    
    " cursor is same as text, col / row are lighter versions of background
    hi Cursor guifg=#BCC952
    hi CursorColumn guibg=#293028
    hi Cursorline guibg=#293028

    hi LineNr guifg=#99A599
    hi CursorLineNr guifg=#00B700 guibg=#293028

    hi DiffAdd
    hi DiffChange
    hi DiffDelete
    hi DiffText

    hi IncSearch
    hi Search

    hi ErrorMsg
    hi ModeMsg
    hi MoreMsg
    hi WarningMsg
    hi Question

    hi Pmenu
    hi PmenuSel
    hi PmenuSbar
    hi PmenuThumb

    hi SpellBad
    hi SpellCap
    hi SpellLocal
    hi SpellRare

    hi StatusLine
    hi StatusLineNC
    hi TabLine
    hi TabLineFill
    hi TabLineSel

    hi Visual
    hi VisualNOS

    hi ColorColumn
    hi Conceal
    hi Directory
    hi VertSplit
    hi Folded
    hi FoldColumn
    hi SignColumn

    hi MatchParen guibg=#293028
    hi SpecialKey guifg=#CCCC00
    hi Title guifg=#CCCC00
    hi WildMenu guifg=#CCCC00 guibg=#293028
