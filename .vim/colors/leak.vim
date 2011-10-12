" Generated by Color Theme Generator at Sweyla
" http://themes.sweyla.com/seed/813182/
" Tweaked by Dieter Limeback <dlimeb@gmail.com>

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "leak"

if version >= 700
  hi CursorLine     guibg=#000000 ctermbg=16
  hi CursorColumn   guibg=#000000 ctermbg=16
  hi MatchParen     guifg=#00ffff guibg=#000000 gui=bold ctermfg=125 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#6E7E67 ctermfg=255 ctermbg=242
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#bbbbbb guibg=#111111 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#dddddd guibg=#0F0F0F gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#666666 guibg=#191919 gui=none ctermfg=255 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#191919 gui=none ctermfg=255 ctermbg=233 cterm=none
hi StatusLineNC     guifg=#666666 guibg=#191919 gui=italic ctermfg=255 ctermbg=235 cterm=italic
hi VertSplit        guifg=#292929 guibg=#191919 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#000000 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#6E7E67 guibg=NONE	gui=bold ctermfg=242 ctermbg=NONE cterm=bold
hi Visual           guifg=#749100 guibg=#323232 gui=none ctermfg=100 ctermbg=236 cterm=none
hi SpecialKey       guifg=#6A0C99 guibg=#0F0F0F gui=none ctermfg=54 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4C4C00 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#25254C gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#663266 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#3F0000 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#FFFFD7 gui=bold ctermfg=230 cterm=bold


" Syntax highlighting
hi Comment guifg=#444444 gui=none ctermfg=242 cterm=none
hi Constant guifg=#6A0C99 gui=none ctermfg=54 cterm=none
hi Number guifg=#6A0C99 gui=none ctermfg=54 cterm=none
hi Identifier guifg=#0071A1 gui=none ctermfg=25 cterm=none
hi Statement guifg=#BB266C gui=none ctermfg=125 cterm=none
hi Function guifg=#FF5C00 gui=none ctermfg=202 cterm=none
hi Special guifg=#FF3162 gui=none ctermfg=203 cterm=none
hi PreProc guifg=#FF3162 gui=none ctermfg=203 cterm=none
hi Keyword guifg=#BB266C gui=none ctermfg=125 cterm=none
hi String guifg=#749100 gui=none ctermfg=100 cterm=none
hi Type guifg=#A4007D gui=none ctermfg=126 cterm=none
hi pythonBuiltin guifg=#0071A1 gui=none ctermfg=25 cterm=none
hi TabLineFill guifg=#2E3A00 gui=none ctermfg=236 cterm=none

" Misc custom
hi treeDir guifg=#5BDADA gui=none ctermfg=242 cterm=none
hi link cssValueLength Number
hi link cssUiProp Type
hi link cssColor PreProc
hi link cssCommonAttr String
hi link cssRenderAttr String
hi link cssRenderProp String
hi link cssTextAttr String
