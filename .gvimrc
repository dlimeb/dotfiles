set guioptions-=T " remove menubar
set guioptions-=m " remove toolbar
set guitablabel=%t
set guifont=InconsolataForPowerline:h15
"set guifont=FiraMono-Regular:h14
"set guifont=Consolas:h14

set background=dark
"colorscheme wesbalt
colorscheme hybrid
"colorscheme peacocks-in-space
"colorscheme superman

" Override syntax highlighting in themes
highlight link cssDeprecated cssFontProp
highlight clear Todo
highlight Todo guifg=#333 guibg=yellow2 gui=bold
highlight UnwantedSpaces guibg=#7C0111
match UnwantedSpaces /\s\+$\|\s\t\|\t\s/
"highlight OverLength ctermbg=red guibg=red
"match OverLength /\%81v.\+/

" Settings that OSX's /usr/bin/vim doesn't dig
set undofile                " keep track of undos in file for later use
set undodir=~/.undo         " directory to hold undo files in

" Command-Shift-Left/Right to scroll through tabs
nmap <D-S-Left> :tabprevious<cr>
nmap <D-S-Right> :tabnext<cr>
map <D-S-Left> :tabprevious<cr>
map <D-S-Right> :tabnext<cr>
imap <D-S-Left> :tabprevious<cr>
imap <D-S-Right> :tabnext<cr>

