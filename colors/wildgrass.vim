" colorscheme file for wildgrass

" reset colors to defaults so we can define new ones
hi clear

if exists("syntax_on")
    syntax reset
endif

" name
let g:colors_name = 'wildgrass'

set termguicolors

" temporary, until I figure out light mode palette
set background=dark

" begin to flush out full color scheme
" by adding bright versions of colors

" Palette Dark Mode {
"     Used for mostly UI {
"         PAPYRUS GREEN 1: #B0C550
"         PAPYRUS GREEN 2: 
"         PAPYRUS GREEN 3:
"    
"         DARK GRAY GREEN 1: #242624
"         DARK GRAY GREEN 2: #272927
"         DARK GRAY GREEN 3: #303230
"        
"         LIGHT GRAY GREEN 1: #6B6C6A
"         LIGHT GRAY GREEN 2: #7B7C7A
"         LIGHT GRAY GREEN 3: #8B8C8A
"
"         CYAN 1: #00FFFF
"         CYAN 2: #
"
"         YELLOW 1: #FFFF00
"         YELLOW 2:
"     }
"     
"     Used mostly for syntax {
"         YELLOW GREEN 1: #DDDD00 replace with pure green
"         YELLOW GREEN 2: #FFFF00
"         
"         FOAM GREEN 1: #00DD80
"         FOAM GREEN 2:
"       
"         
"         BRONZE GREEN (done 1): #707500
"         
"         PURE GREEN (done 1): #00FF00 replace with white
"         
"         SLATE GREEN (done 1): #6B9C6D
"         
"         TURQUOISE GREEN (done 1): #008580 
"         
"         PATINA GREEN (done 1): #6B9C3D
"     }
" }


" Light Mode Palete {
"     The same as dark mode but with darker shades
"     replacing light ones (e.g. cyan green 2 is used
"     where cyan green 1 would be in dark mode) and
"     with 
" }

" SYNTAX GROUPS (see :h group-name):

" light gray green (done 1)
hi Comment cterm=italic ctermfg=NONE ctermbg=NONE gui=italic guifg=#6B6C6A guibg=NONE guisp=NONE

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
hi Special cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE guisp=NONE
hi SpecialChar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE guisp=NONE
hi Tag cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE guisp=NONE
hi Deliminator cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE guisp=NONE
hi SpecialComment cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE guisp=NONE
hi Debug cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE guisp=NONE

" turquoise green (done 1) 
hi Underlined cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi Ignore cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi Error cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi Todo cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE

" HIGHLIGHTING GROUPS (see :h hi-groups): 

" main colors (done 1)
hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#242624 guisp=NONE
hi Terminal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#242624 guisp=NONE

hi Conceal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi CursorIM cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE guisp=NONE
hi Cursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
hi lCursor cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE guisp=NONE

hi Directory cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guisp=NONE
hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C6D guibg=NONE guisp=NONE
hi DiffChange cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C6D guibg=NONE guisp=NONE
hi DiffDelete cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B9C6D guibg=NONE guisp=NONE
hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#111111 guibg=#6B9C6D guisp=NONE

" errors, messages, warnings
hi ModeMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#FFFF00 guibg=NONE guisp=NONE
hi MoreMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#FFFF00 guibg=NONE guisp=NONE
hi ErrorMsg cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#FFFF00 guibg=NONE guisp=NONE
hi WarningMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#FFFF00 guibg=NONE guisp=NONE

" column-, line-related groups
hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#272927 guibg=NONE guisp=NONE
hi CursorColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#272927 guisp=NONE
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#272927 guisp=NONE
hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=#272927 guisp=NONE
hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#272927 guisp=NONE
hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#272927 guisp=NONE
hi EndOfBuffer cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B6C6A guibg=#272927 guisp=NONE
hi LineNr cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#00FF00 guibg=#242624 guisp=NONE
hi LineNrAbove cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B6C6A guibg=#272927 guisp=NONE
hi LineNrBelow cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6B6C6A guibg=#272927 guisp=NONE
hi Folded cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi FoldColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi SignColumn cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi VertSplit cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE

" various code highlighting (done 1)
hi IncSearch cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#242624 guibg=#FFFF00 guisp=NONE
hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#303230 guisp=NONE
hi Search cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#242624 guibg=#00FF00 guisp=NONE
hi Visual cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#303230 guisp=NONE
hi VisualNOS cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#303230 guisp=NONE

" misc other text (such as ~@k) (done)
hi NonText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=NONE guisp=NONE

" popup menu (done 1)
hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#303230 guisp=NONE
hi PmenuSel cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#242624 guibg=#B0C550 guisp=NONE 
hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=NONE guisp=NONE
hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=NONE guisp=NONE

hi Question cterm=NONE ctermfg=NONE ctermfg=NONE gui=bold guifg=#FFFF00 guibg=NONE guisp=NONE
hi QuickFixLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFFFF guibg=NONE guisp=NONE

hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE guisp=NONE

" spelling errors (done 1)
hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#FFFF00 
hi SpellCap cterm=undercurl ctermfg=NONE ctermbg=NONE gui=undercurl guifg=NONE guibg=NONE guisp=NONE guisp=#00DD80
hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#008580 
hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#00FF00

" statusline
hi StatusLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi StatusLineNC ctermfg=NONE ctermbg=NONE gui=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi StatusLineTerm cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE guisp=NONE
hi StatusLineTermNC cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFFFF guibg=NONE guisp=NONE

hi Title cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=NONE guisp=NONE

hi TabLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE
hi TabLineSel cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#008580 guibg=NONE guisp=NONE

hi WildMenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFF00 guibg=#293028 guisp=NONE

" gvim colors
