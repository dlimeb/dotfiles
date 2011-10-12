set guioptions-=T " remove menubar
set guioptions-=m " remove toolbar
set guitablabel=%t
set guifont=Consolas:h14

set background=dark
colorscheme leak

" Command-Shift-Left/Right to scroll through tabs
nmap <D-S-Left> :tabprevious<cr>
nmap <D-S-Right> :tabnext<cr>
map <D-S-Left> :tabprevious<cr>
map <D-S-Right> :tabnext<cr>
imap <D-S-Left> :tabprevious<cr>
imap <D-S-Right> :tabnext<cr>
