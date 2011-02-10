"
"  ~/.vimrc
"
set nocompatible " use vim settings, not vi (must be first line)

" ----------------------------------------------------------------------------
"   SETTINGS
" ----------------------------------------------------------------------------
" Pathogen -- easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory. Must be close to top of vimrc
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" ----------------------------------------------------------------------------
"   DEFAULTS (i.e., make vim behave sanely)
" ----------------------------------------------------------------------------
syntax on                   " syntax highlighting
filetype plugin indent on   " detect the type of file being edited
set encoding=utf-8          " set character encoding used
set modeline                " allow settings to be imported from file
set ttyfast                 " smoother changes
set hidden                  " allow unsaved buffer to be put in background
set report=0                " always report changes
set showmode                " show the current mode
set scrolloff=3             " number of lines to keep above/below cursor
set noerrorbells            " ssssshhhhhhh
set number                  " view line numbers by default
set history=500             " how many lines of command history to remember

" I can count on one hand the number of times I've been saved by a swp file,
" but would need hundreds of hands to count how often I get annoyed by 
" the 'yo, swp file already exists!' messages
"set directory=~/.swp       " directory to hold .swp files in
set nobackup
set nowritebackup
set noswapfile


" ----------------------------------------------------------------------------
"   CODE SETTINGS -- tab behaviour, indenting, line wrapping, etc
" ----------------------------------------------------------------------------
set tabstop=4               " number of spaces that a <Tab> in the file is
set softtabstop=4           " number of spaces that a <Tab> counts as
set shiftwidth=4            " number of spaces to use for autoindenting
set expandtab               " expand tabs into spaces
set autoindent              " autoindent
set smartindent             " smart indenting eg. after opening {
set backspace=indent,eol,start " backspace over everything in insert mode
set showmatch               " highlight matching brackets
set wrap                    " wrap lines
set wrapmargin=0            " wrap starts this many chars before right border
set textwidth=0             " text width (0 is unlimited)
set formatoptions=tcrqn1    " set how vim formats text (see :h fo-table)
"set colorcolumn=85         " show indicator of line length
set linebreak               " break lines at reasonable spot
set comments=b:#,:%,fb:-,n:>,n:),sr:/*,mb:*,el:*/,n:##,n:\" " define what comments are
set listchars=tab:>-,trail:-,nbsp:%,eol:$ " define what whitespace chars are
highlight UnwantedSpaces ctermbg=red guibg=red
match UnwantedSpaces /\s\+$\|\s\t\|\t\s/
"highlight OverLength ctermbg=red guibg=red
"match OverLength /\%81v.\+/


" ----------------------------------------------------------------------------
"   SEARCHING
" ----------------------------------------------------------------------------
set ignorecase              " case insensitive searching
set smartcase               " ... unless there is a cap in the search pattern
set hlsearch                " highlight search
set incsearch               " ... and do incremental searching
set gdefault                " adds /g by default to replace all instances
set mat=5                   " 10ths of a second to show matching brackets
" Fix vim's handling of regexps
nnoremap / /\v
vnoremap / /\v


" ----------------------------------------------------------------------------
"   UI SETTINGS
" ----------------------------------------------------------------------------
set laststatus=2            " always have a status line
set statusline=\ %<%f\ %m%=%y%r\ %P\  " ...showing basic file info
set title                   " title the terminal window
set titlestring=Vim:\ %f%(\ (%R%M)%)
set titleold="Vim"          " instead of 'Thanks for flying Vim'
set wildmenu                " enhanced command line completion
set wildmode=list:longest   " ... and show available options
set wildignore+=*.pyc,*.zip,*.gz,*.bz,*.tar,*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov " ... and ignore some stuff
"set cursorline             " highlight the line the cursor is on
set shortmess+=T            " forego the 'hit enter to continue' msgs
set foldmethod=marker       " enable folding by markers
"set foldclose=all          " autoclose folds when moving out of them
set showcmd                 " display incomplete commands
set scrolljump=5            " jump 5 lines when running out of screen

" Force usage of hjkl -- nuke arrow keys
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk

" Stupid far away Thinkpad Esc key
nnoremap <F1> <Esc>
inoremap <F1> <nop>

" Change working dir to what contains the current file
if exists('+autochdir')
  set autochdir
else
  autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif


" ----------------------------------------------------------------------------
"   AUTOCOMMANDS
" ----------------------------------------------------------------------------
if has("autocmd")
    augroup filetypedetect
        au! BufRead,BufNewFile *.html set ft=html.html5
        au! BufRead,BufNewFile *.txt set ft=human
        au! BufRead,BufNewFile *.mako set ft=mako syntax=html.html5.mako
        au! BufRead,BufNewFile *.mkd,*.markdown,*mdwn,*md set ft=markdown
        au! BufRead,BufNewFile *.json set ft=javascript
        au! BufRead,BufNewFile *.mustache set ft=mustache
    augroup END

    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
endif


" ----------------------------------------------------------------------------
"   MAPPINGS and PLUGIN SETTINGS
" ----------------------------------------------------------------------------
" My very own personal modifier key
let mapleader = ","

" Clear search highlighting
"nnoremap <leader>q :noh <CR>
nnoremap <CR> :noh <CR>

" Display whitespace characters
nmap <silent> <leader>h :set nolist!<CR>
" Strip whitespace characters
nnoremap <leader>H :%s/\s\+$//<cr>:let @/=''<CR>

" Rewrap paragraph of text
nnoremap <leader>Q gqip

" Reselect text I just pasted
nnoremap <leader>V V`]

" NERDtree
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1
map <leader>d :NERDTreeToggle<CR>

" Gist
let g:gist_clip_command = 'pbcopy'
let g:github_user = 'dlimeb'

" Vimwiki
"let g:vimwiki_folding = 1 " folds everything up by default
let g:vimwiki_list = [{'path': '~/Dropbox/Dieter/personal/vimwiki', 'diary_header': 'DailyLog', 'diary_index': 'DailyLog', 'diary_rel_path': '/', 'diary_link_count': 5}]
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_fold_trailing_empty_lines = 1
let g:vimwiki_table_auto_fmt = 0 " frees up tab key for snipmate use

" Fuzzy Finder
" See also settings: g:fuzzy_roots, g:fuzzy_ceiling, g:fuzzy_ignore, g:fuzzy_matching_limit
map <leader>f :FufBuffer<CR>

" snipMate
let g:snippets_dir = '~/.vim/snippets'

" Ack
map <leader>a :Ack

" bufexplorer
let g:bufExplorerDetailedHelp=0

" Easy filetype switching
nnoremap _dt :set ft=htmldjango.html.html5<CR>
nnoremap _jq :set ft=jquery.javascript<CR>

" Show info about syntax/color of word
map -a :call SyntaxAttr()<CR>

" Scroll viewport by a few lines
nnoremap <C-e> <C-e><C-e><C-e>
nnoremap <C-y> <C-y><C-y><C-y>

" Line numbering
" Toggle on and off
nmap <leader>nn :set invnumber<CR>
"nmap <leader>nu :set nu<CR>
"nmap <leader>nr :set rnu<CR>

" Make Y consistent with C and D
nnoremap Y y$

" Make selecting inside an HTML tag less dumb
nnoremap Vat vatV

" Insert a new line without going into insert mode
map <leader>O O<ESC>

" Maintain smartindenting when adding comments
inoremap # X#

" Swap mapping for jumping back to marked points
nnoremap ' `
nnoremap ` '

" Easier block indenting
:vnoremap < <gv
:vnoremap > >gv

" Fast editing of vim stuff
nmap <leader>ev :e $MYVIMRC<cr>
nmap <leader>es :e ~/.vim/snippets/<cr>

" Splits - fast creation, window switching, resizing
noremap <leader>v <c-w>v<c-w>l
noremap <leader>s <c-w>s<c-w>j
noremap <leader>x <c-w>c
noremap <leader>z :ZoomWin<cr>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <c-Up> <c-w>-
map <c-Down> <c-w>+
map <c-Right> <c-w>>
map <c-Left> <c-w><

" Write file when you forget to sudo first
cmap w!! w !sudo tee % >/dev/null

" Preview markdown documents in browser
nmap <leader>pm  :! ~/bin/Markdown.pl % > /tmp/preview.html && open -a "Google Chrome" /tmp/preview.html<CR><CR>

" Fix common typos
iab teh the
iab hte the
iab adn and
iab taht that
iab htat that
iab ahve have
iab jsut just
iab fo of
iab ot to
iab serach search
iab ehco echo
iab archvies archives
iab blcok block
iab endblcok endblock
iab requets request
iab checktou checkout

" HTML escaping of <, >, &
function HtmlEscape()
  silent s/&/\&amp;/
  silent s/</\&lt;/
  silent s/>/\&gt;/
endfunction

function HtmlUnEscape()
  silent s/&lt;/</
  silent s/&gt;/>/
  silent s/&amp;/\&/
endfunction
