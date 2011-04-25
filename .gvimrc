set guioptions-=T " remove menubar
set guioptions-=m " remove toolbar
set guitablabel=%t
set guifont=Consolas:h14

set background=dark
"let g:solarized_termcolors=   256
"let g:solarized_bold      =   1
"let g:solarized_underline =   0
"let g:solarized_italic    =   1
"let g:solarized_style     =   "dark"
"let g:solarized_contrast  =   "high"
colorscheme molokai

"set relativenumber " show line numbers as distance away from current
set undofile " keep track of undos in file for later use
set undodir=~/.undo " directory to hold undo files in

" Command-Shift-Left/Right to scroll through tabs
nmap <D-S-Left> :tabprevious<cr>
nmap <D-S-Right> :tabnext<cr>
map <D-S-Left> :tabprevious<cr>
map <D-S-Right> :tabnext<cr>
imap <D-S-Left> :tabprevious<cr>
imap <D-S-Right> :tabnext<cr>
