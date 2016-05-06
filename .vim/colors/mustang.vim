" Maintainer:	Henrique C. Alves (hcarvalhoalves@gmail.com)
" Version:      1.0
" Last Change:	September 25 2008

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "mustang"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#2d2d2d ctermbg=236
  hi ColorColumn guibg=#2d2d2d ctermbg=236
  hi CursorColumn guibg=#2d2d2d ctermbg=236
  hi MatchParen guifg=#b1d631 guibg=#191919 gui=bold ctermfg=157 ctermbg=237 cterm=bold
  hi Pmenu 		guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
  hi PmenuSel 	guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
endif

" General colors
hi Cursor 		guifg=NONE    guibg=#626262 gui=none ctermbg=241
hi Normal 		guifg=#bbbbbb guibg=#191919 gui=none ctermfg=253 ctermbg=234
hi NonText 		guifg=#444444 guibg=#191919 gui=none ctermfg=244 ctermbg=235
hi LineNr 		guifg=#444444 guibg=#202020 gui=none ctermfg=244 ctermbg=232
hi StatusLine 	guifg=#ffffff guibg=#444444 gui=none ctermfg=253 ctermbg=238
hi StatusLineNC guifg=#777777 guibg=#444444 gui=italic ctermfg=246 ctermbg=238 cterm=italic
hi VertSplit 	guifg=#444444 guibg=#202020 gui=none ctermfg=238 ctermbg=238
hi Folded 		guifg=#a0a8b0 guibg=#202020 gui=none ctermbg=4 ctermfg=248
hi Title		guifg=#f6f3e8 guibg=NONE	gui=none ctermfg=254 cterm=none
hi Visual		guifg=#dfdf9e guibg=#3c414c gui=none ctermfg=254 ctermbg=4
hi SpecialKey	guifg=#808080 guibg=#191919 gui=none ctermfg=244 ctermbg=236

" Syntax highlighting
hi Comment 		guifg=#555555 gui=italic ctermfg=244
hi Todo 		guifg=#8f8f8f gui=none ctermfg=123
hi Boolean      guifg=#b1d631 gui=none ctermfg=148
hi String 		guifg=#b1d631 gui=none ctermfg=148
hi Identifier 	guifg=#b1d631 gui=none ctermfg=148
hi Function 	guifg=#aaaaaa gui=none ctermfg=255
hi Type 		guifg=#7e8aa2 gui=none ctermfg=103
hi Statement 	guifg=#7e8aa2 gui=none ctermfg=103
hi Keyword		guifg=#ff9800 gui=none ctermfg=208
hi Constant 	guifg=#ff9800 gui=none  ctermfg=208
hi Number		guifg=#ff9800 gui=none ctermfg=208
hi Special		guifg=#ff9800 gui=none ctermfg=208
hi PreProc 		guifg=#dfdf9e gui=none ctermfg=230
hi Todo         guifg=#000000 guibg=#e6ea50 gui=italic

" Code-specific colors
hi pythonOperator guifg=#7e8aa2 gui=none ctermfg=103
hi cssBraces 	guifg=#aaaaaa gui=none ctermfg=255
hi htmlEndTag 	guifg=#aaaaaa gui=none ctermfg=255

hi diffRemoved      guifg=#cc0000
hi diffAdded        guifg=#00cc00
hi VimwikiHeader1   guifg=#FF009B
hi VimwikiHeader2   guifg=#8dda74
hi VimwikiHeader3   guifg=#3db698
hi VimwikiList      guifg=#987526
