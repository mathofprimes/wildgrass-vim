" colorscheme file for wildgrass,

" reset colors to defaults so we can define new ones
hi clear

if exists("syntax_on")
    syntax reset
endif

" name
let g:colors_name = 'wildgrass'

set termguicolors

" Palette {
"     PAPER GREEN (done 1): #B0C550
"     
"     CHARCOAL GREEN 1 (done 1): #242624
"     CHARCOAL GREEN 2 (done 1): #272927
"     CHARCOAL GREEN 3 (done 1): #303230
"    
"     LIGHT GRAY GREEN (done 2): #607050

"     YELLOW GREEN (done 1): #FDFF00
"     CYAN GREEN (done 1): #00DD80
"     BRONZE GREEN (done 1): #707500
"     PURE GREEN (done 1): #00FF00
"     SLATE GREEN (done 1): #6B9C6D
"     TURQUOISE GREEN (done 1): #008580 
"     FADED GREEN (done 1): #6B9C3D
" }

" SYNTAX GROUPS (see :h group-name):

" light gray green (done 1)
hi Comment cterm=italic ctermfg=NONE ctermbg=NONE gui=italic guifg=#607050 guibg=NONE guisp=NONE

" cyan green (done 1) 
hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00DD80 guibg=NONE guisp=NONE
hi String cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00DD80 guibg=NONE guisp=NONE
hi Character cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00DD80 guibg=NONE guisp=NONE
hi Number cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00DD80 guibg=NONE guisp=NONE
hi Boolean cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00DD80 guibg=NONE guisp=NONE
hi Float cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00DD80 guibg=NONE guisp=NONE
    
" pure green (done 1)
hi Identifier cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE guisp=NONE
hi Function cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE guisp=NONE

" bronze green
hi Statement cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#707500 guibg=NONE guisp=NONE
hi Conditional cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#707500 guibg=NONE guisp=NONE
hi Repeat cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#707500 guibg=NONE guisp=NONE
hi Label cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#707500 guibg=NONE guisp=NONE
hi Operator cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#707500 guibg=NONE guisp=NONE
hi Keyword cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#707500 guibg=NONE guisp=NONE
hi Exception cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#707500 guibg=NONE guisp=NONE

" faded green (done 1)
hi PreProc cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C3D guibg=NONE guisp=NONE
hi Include cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C3D guibg=NONE guisp=NONE
hi Define cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C3D guibg=NONE guisp=NONE
hi Macro cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C3D guibg=NONE guisp=NONE
hi PreCondit cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C3D guibg=NONE guisp=NONE

" slate green (done 1)
hi Type cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C6D guibg=NONE guisp=NONE
hi StorageClass cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C6D guibg=NONE guisp=NONE
hi Structure cterm =NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C6D guibg=NONE guisp=NONE
hi Typedef cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C6D guibg=NONE guisp=NONE

" yellow green (done 1)
hi Special cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FDFF00 guibg=NONE guisp=NONE
hi SpecialChar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FDFF00 guibg=NONE guisp=NONE
hi Tag cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FDFF00 guibg=NONE guisp=NONE
hi Deliminator cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FDFF00 guibg=NONE guisp=NONE
hi SpecialComment cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FDFF00 guibg=NONE guisp=NONE
hi Debug cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FDFF00 guibg=NONE guisp=NONE

" turquoise green (done 1) 
hi Underlined cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi Ignore cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi Error cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi Todo cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE

" HIGHLIGHTING GROUPS (see :h hi-groups): 

" main colors
hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#BCC952 guibg=#242523
hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#CC00FF guibg=NONE guisp=NONE

hi Conceal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi CursorIM cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE guisp=NONE
hi Cursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
hi lCursor cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE guisp=NONE

hi Directory cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00
hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C6D guibg=NONE guisp=NONE
hi DiffChange cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C6D guibg=NONE guisp=NONE
hi DiffDelete cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C6D guibg=NONE guisp=NONE
hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#111111 guibg=#6B9C6D

" errors, messages, warnings
hi ModeMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#FDFF00 guibg=NONE guisp=NONE
hi MoreMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#FDFF00 guibg=NONE guisp=NONE
hi ErrorMsg cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#FDFF00 guibg=NONE guisp=NONE
hi WarningMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#FDFF00 guibg=NONE guisp=NONE

" column-, line-related groups
hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#272927 guibg=NONE guisp=NONE
hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#272927
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#272927
hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=#272927
hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#272927
hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#272927
hi EndOfBuffer cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#607050 guibg=#272927
hi LineNr cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00FF00 guibg=#242624
hi LineNrAbove cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#607050 guibg=#272927
hi LineNrBelow cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#607050 guibg=#272927
hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi VertSplit cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE

" various code highlighting
hi IncSearch cterm=NONE ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#303230
hi Search cterm=NONE ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
hi Visual cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi VisualNOS cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE

" misc other text (such as ~@k) (done)
hi NonText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=NONE guisp=NONE

" popup menu
hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#303230
hi PmenuSel cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#242624 guibg=#B0C550 
hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE guisp=NONE
hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE guisp=NONE

hi Question cterm=NONE ctermfg=NONE ctermfg=NONE gui=bold guifg=#FDFF00 guibg=NONE guisp=NONE
hi QuickFixLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFFFF guibg=NONE guisp=NONE

hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FDFF00 guibg=NONE guisp=NONE

" spelling errors (done 1)
hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#FDFF00 
hi SpellCap cterm=undercurl ctermfg=NONE ctermbg=NONE gui=undercurl guifg=NONE guibg=NONE guisp=NONE guisp=#00DD80
hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#008580 
hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#00FF00

" statusline
hi StatusLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi StatusLineNC ctermfg=NONE ctermbg=NONE gui=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi StatusLineTerm cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE guisp=NONE
hi StatusLineTermNC cterm=NONE ctermfg=NONE

hi Title cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FDFF00 guifg=NONE

hi TabLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi TabLineSel cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE

hi WildMenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FDFF00 guibg=#293028

" gvim colors
