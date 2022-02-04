" colorscheme file for wildgrass

" reset colors to defaults so we can define new ones
highlight clear

if exists("syntax_on")
    syntax reset
endif

" colorscheme name
set g:colors_name="wildgrass"

" Foreground = 9CCC5A  
" Background = 202220

" PureGreen = #00A000 
" CyanGreen = #00D5A0 
" BronzeGreen = #8C8E00  
" GoldenGreen = #ACCC00 
" SlateGreen = #505F5C
" GrayGreen = #A0B090
" FadedGreen = #A89984
" SkyGreen = #4CB0A0

" user interface:
highlight Normal guifg=#ACC5A guibg=#202220

highlight Cursor
highlight CursorColumn
highlight Cursorline

highlight LineNr
highlight CursorLineNr

highlight DiffAdd
highlight DiffChange
highlight DiffDelete
highlight DiffText

highlight IncSearch
highlight Search

highlight ErrorMsg
highlight ModeMsg
highlight MoreMsg
highlight WarningMsg
highlight Question

highlight Pmenu
highlight PmenuSel
highlight PmenuSbar
highlight PmenuThumb

highlight SpellBad
highlight SpellCap
highlight SpellLocal
highlight SpellRare

highlight StatusLine
highlight StatusLineNC
highlight TabLine
highlight TabLineFill
highlight TabLineSel

highlight Visual
highlight VisualNOS

highlight ColorColumn
highlight Conceal
highlight Directory
highlight VertSplit
highlight Folded
highlight FoldColumn
highlight SignColumn

highlight MatchParen
highlight SpecialKey
highlight Title
highlight WildMenu
" } various/ui

" }

" syntax (see :h group-name)
highlight Comment guifg=#708070

highlight Constant guifg=#708070
highlight String guifg=#
highlight Character	guifg=#00D5A0
highlight Number guifg=#00D5A0
highlight Boolean guifg=#00D5A0
highlight Float guifg=#00D5A0

highlight Identifier guifg=#C0D000
highlight Function guifg=#C0D000

highlight Statement	guifg=#C0D000
highlight Conditional guifg=#C0D000
highlight Repeat guifg=#C0D000
highlight Label guifg=#C0D000
highlight Operator guifg=#C0D000
highlight Keyword guifg=#C0D000
highlight Exception	guifg=#C0D000

highlight PreProc guifg=#00D5A0
highlight Include guifg=#00D5A0
highlight Define guifg=#00D5A0
highlight Macro guifg=#00D5A0
highlight PreCondit guifg=#00D5A0

highlight Type guifg=#A0B090
highlight StorageClass guifg=#A0B090
highlight Structure guifg=#A0B090
highlight Typedef guifg=#C0D000

highlight Special guifg=#50A050
highlight SpecialChar guifg=#A0B090
highlight Tag guifg=#A0B090
highlight Deliminator guifg=#9CCC5A
highlight SpecialComment guifg=#708070
highlight Debug guifg=#C0D000

highlight Underlined guifg=#9CCC5A

highlight Ignore guifg=#9CCC5A

highlight Error guifg=#C0D000

highlight Todo guifg=#00D5A0
