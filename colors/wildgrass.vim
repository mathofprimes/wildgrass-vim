" colorscheme file for wildgrass,

" reset colors to defaults so we can define new ones
hi clear

if exists("syntax_on")
    syntax reset
endif

" name
let g:colors_name="wildgrass"

set termguicolors

" temporary, until light mode is implemented
set background=dark

" Palette {
"     Used for mostly UI {
"         PAPYRUS GREEN 1: #50600E
"         PAPYRUS GREEN 2: #708510
"         
"         PAPYRUS GREEN 3: #90A530
"         PAPYRUS GREEN 4: #B0C550
"    
"         DARK GRAY GREEN 1: #242524
"         DARK GRAY GREEN 2: #262726
"         
"         DARK GRAY GREEN 3: #283028
"         DARK GRAY GREEN 4: #303230
"        
"         LIGHT GRAY GREEN 1: #5B5C5A
"         LIGHT GRAY GREEN 2: #7B7C7A
"         
"         LIGHT GRAY GREEN 3: #9B9C9A
"         LIGHT GRAY GREEN 4: #ABACAA
"
"         CYAN 1: #00DDDC
"         CYAN 2: #00FFFE
"
"         YELLOW 1: #DCDD00
"         YELLOW 2: #FEFF00
"     }
"     
"     Used mostly for code {
"         PURE GREEN 1: #00DD00
"         PURE GREEN 2: #00FF00
"         
"         SEA GREEN 1: #00B55F
"         SEA GREEN 2: #00D57F 
"
"         GOLD GREEN 1: #60AF00 
"         GOLD GREEN 2: #90CF00
"       
"         BRONZE GREEN 1: #535500
"         BRONZE GREEN 2: #737500
"
"         DOVE GREEN 1: #60AA60
"         DOVE GREEN 2: #90CC90
"
"         SLATE GREEN 1: #307050
"         SLATE GREEN 2: #509070
"         
"         TURQUOISE GREEN 1: #007570 
"         TURQUOISE GREEN 2: #009590
"         
"         PATINA GREEN 1: #507F30
"         PATINA GREEN 2: #709F50
"     }
" }

" SYNTAX GROUPS (see :h group-name):

" commenting
hi Comment      cterm=italic ctermfg=NONE ctermbg=NONE gui=italic guifg=#5B5C5A guibg=NONE guisp=NONE

" sea green  
hi Constant     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00D57F guibg=NONE guisp=NONE
hi String       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00D57F guibg=NONE guisp=NONE
hi Character    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00D57F guibg=NONE guisp=NONE
hi Number       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00D57F guibg=NONE guisp=NONE
hi Boolean      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00D57F guibg=NONE guisp=NONE
hi Float        cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00D57F guibg=NONE guisp=NONE
    
" pure green
hi Identifier   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE guisp=NONE
hi Function     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#00FF00 guibg=NONE guisp=NONE

" bronze green
hi Statement    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#737500 guibg=NONE guisp=NONE
hi Conditional  cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#737500 guibg=NONE guisp=NONE
hi Repeat       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#737500 guibg=NONE guisp=NONE
hi Label        cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#737500 guibg=NONE guisp=NONE
hi Operator     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#737500 guibg=NONE guisp=NONE
hi Keyword      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#737500 guibg=NONE guisp=NONE
hi Exception    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#737500 guibg=NONE guisp=NONE

" patina green
hi PreProc      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#709F50 guibg=NONE guisp=NONE
hi Include      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#709F50 guibg=NONE guisp=NONE
hi Define       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#709F50 guibg=NONE guisp=NONE
hi Macro        cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#709F50 guibg=NONE guisp=NONE
hi PreCondit    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#709F50 guibg=NONE guisp=NONE

" slate green
hi Type         cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#509070 guibg=NONE guisp=NONE
hi StorageClass cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#509070 guibg=NONE guisp=NONE
hi Structure    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#509070 guibg=NONE guisp=NONE
hi Typedef      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#509070 guibg=NONE guisp=NONE

" gold green
hi Special        cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
hi SpecialChar    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
hi Tag            cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
hi Deliminator    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
hi SpecialComment cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE
hi Debug          cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE

" turquoise green 
hi Underlined     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi Ignore         cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi Error          cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi Todo           cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE

" HIGHLIGHTING GROUPS (see :h hi-groups): 

" main colors
hi Normal         cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#242524 guisp=NONE
hi Terminal       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#242524 guisp=NONE

" cursor related
hi Conceal        cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#283028 guibg=NONE guisp=NONE
hi Cursor         cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
hi CursorIM       cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE
hi lCursor        cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE guisp=NONE

" directories
hi Directory      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CC90 guibg=NONE guisp=NONE

" diffs
hi DiffAdd        cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#262726 guisp=NONE
hi DiffChange     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#262726 guisp=NONE
hi DiffDelete     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#262726 guisp=NONE
hi DiffText       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#262726 guisp=NONE

" errors, messages, warnings
hi ModeMsg        cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#90CF00 guibg=NONE guisp=NONE
hi MoreMsg        cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#90CF00 guibg=NONE guisp=NONE
hi ErrorMsg       cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#90CF00 guibg=NONE guisp=NONE
hi WarningMsg     cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#90CF00 guibg=NONE guisp=NONE

" column, line, row groups
hi ColorColumn    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#282928 guibg=NONE guisp=NONE
hi CursorColumn   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#282928 guisp=NONE
hi CursorLine     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#282928 guisp=NONE
hi CursorLineNr   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ABACAA guibg=#282928 guisp=NONE
hi CursorLineSign cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#282928 guisp=NONE
hi CursorLineFold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#282928 guisp=NONE
hi EndOfBuffer    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ABACAA guibg=#303230 guisp=NONE
hi LineNr         cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#ABACAA guibg=#242524 guisp=NONE
hi LineNrAbove    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#7B7C7A guibg=#303230 guisp=NONE
hi LineNrBelow    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#5B5C5A guibg=#303230 guisp=NONE
hi Folded         cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=#282928 guisp=NONE
hi FoldColumn     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=#282928 guisp=NONE
hi SignColumn     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#262726 guisp=NONE
hi VertSplit      cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#ABACAA guibg=#242524 guisp=NONE

" various code highlighting 
hi IncSearch cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#242524 guibg=#90CF00 guisp=NONE
hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#303230 guisp=NONE
hi Search cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#242524 guibg=#00FF00 guisp=NONE
hi Visual cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#303230 guisp=NONE
hi VisualNOS cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=#303230 guisp=NONE

" popup menu (done 1)
hi Pmenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=#303230 guisp=NONE
hi PmenuSel cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#242524 guibg=#B0C550 guisp=NONE 
hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=NONE guisp=NONE
hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=NONE guisp=NONE

hi Question cterm=NONE ctermfg=NONE ctermfg=NONE gui=bold guifg=#90CF00 guibg=NONE guisp=NONE
hi QuickFixLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFFFF guibg=NONE guisp=NONE

hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE

" spelling errors (done 1)
hi SpellBad cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#90CF00 
hi SpellCap cterm=undercurl ctermfg=NONE ctermbg=NONE gui=undercurl guifg=NONE guibg=NONE guisp=NONE guisp=#00D57F
hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#009590 
hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE guisp=NONE guisp=#00FF00

" statusline
hi StatusLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi StatusLineNC ctermfg=NONE ctermbg=NONE gui=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi StatusLineTerm cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE guisp=NONE
hi StatusLineTermNC cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#FFFFFF guibg=NONE guisp=NONE

hi Title cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=NONE guisp=NONE

hi TabLine cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE
hi TabLineSel cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#009590 guibg=NONE guisp=NONE

hi WildMenu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#90CF00 guibg=#293028 guisp=NONE

" other text (such as ~@k)
hi NonText cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#B0C550 guibg=NONE guisp=NONE

" gvim colors
