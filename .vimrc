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
"set noerrorbells            " ssssshhhhhhh
set visualbell
set number                  " view line numbers by default
"set relativenumber         " show line numbers as distance away from current
set history=500             " how many lines of command history to remember
set nobackup                " don't make backup files
set nowritebackup           " no, really
set noswapfile              " and no swapfiles either
set autoread                " reload file automatically if it was modified elsewhere


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
"set iskeyword+=:            " allow TODOs to have a colon
set comments=b:#,:%,fb:-,n:>,n:),sr:/*,mb:*,el:*/,n:##,n:\" " define what comments are
set listchars=tab:>-,trail:-,nbsp:%,eol:$ " define what whitespace chars are

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
set statusline=[%n]\ %<%f\ %{fugitive#statusline()}\ %m%=%y%r\ %P\  " ...showing basic file info
set title                   " title the terminal window
set titlestring=Vim:\ %f%(\ (%R%M)%)
set titleold="Vim"          " instead of 'Thanks for flying Vim'
set wildmenu                " enhanced command line completion
set wildmode=list:longest   " ... and show available options
set wildignore+=*.pyc,*.zip,*.gz,*.bz,*.tar,*.avi,*.wmv,*.ogg,*.mp3,*.mov " ... and ignore some stuff
set cursorline             " highlight the line the cursor is on
set shortmess=atI           " forego unnecessary messages
set foldmethod=marker       " enable folding
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

" Change working dir to what contains the current file
"if exists('+autochdir')
  "set autochdir
"else
  "autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
"endif


" ----------------------------------------------------------------------------
"   AUTOCOMMANDS
" ----------------------------------------------------------------------------
if has("autocmd")

    " Open all folds
    "autocmd BufEnter * exe "normal zR"

    " Set filetypes
    augroup filetypedetect
        au! BufRead,BufNewFile *.html set ft=htmldjango.html tabstop=2 softtabstop=2 shiftwidth=2
        au! BufRead,BufNewFile *.haml set ft=haml.html tabstop=2 softtabstop=2 shiftwidth=2
        au! BufRead,BufNewFile *.php set ft=php.html tabstop=2 softtabstop=2 shiftwidth=2
        au! BufRead,BufNewFile *.txt set ft=human
        au! BufRead,BufNewFile *.mako set ft=mako.html syntax=mako.html5.html tabstop=2 softtabstop=2 shiftwidth=2
        au! BufRead,BufNewFile *.mkd,*.markdown,*.mdwn,*.md set ft=markdown tabstop=2 softtabstop=2 shiftwidth=2
        au! BufRead,BufNewFile */vimwiki/* set filetype=vimwiki
        au! BufRead,BufNewFile *.js,*.json,*.jstalk set ft=javascript.jquery tabstop=2 softtabstop=2 shiftwidth=2
        au! BufRead,BufNewFile *.ejs set ft=html.javascript tabstop=2 softtabstop=2 shiftwidth=2
        au! BufRead,BufNewFile *.mustache,*.hbs set ft=mustache.html tabstop=2 softtabstop=2 shiftwidth=2
        au! BufRead,BufNewFile *.css set ft=css tabstop=2 softtabstop=2 shiftwidth=2
        au! BufRead,BufNewFile *.less set ft=less.css tabstop=2 softtabstop=2 shiftwidth=2
        au! BufRead,BufNewFile *.scss set ft=scss.sass.css tabstop=2 softtabstop=2 shiftwidth=2
        "autocmd BufWritePost,FileWritePost *.scss.sass.css CSScommb
        "autocmd BufWritePost,FileWritePost *.js JSHint
    augroup END

    " open help window in vertical split
    autocmd FileType help wincmd L

    " Set tab completion
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType javascript.jquery set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    imap <Tab> <C-P>

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

    " Detect indenting used in filed and set settings accordingly
    "autocmd BufReadPost * :DetectIndent

    " Syntax highlight "TODO" et al as well as "TODO:" (got tired of fighting
    " with `iskeyword` for the colon)
    augroup HiglightTODO
        autocmd!
        autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'TODO', -1)
        autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'FIXME', -1)
        autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'XXX', -1)
        autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'NOTE', -1)
    augroup END
endif


" ----------------------------------------------------------------------------
"   MAPPINGS and PLUGIN SETTINGS
" ----------------------------------------------------------------------------
" My very own personal modifier key
let mapleader = ","

" Clear search highlighting
"nnoremap <leader>q :noh <CR>
"nnoremap <CR> :noh <CR>
noremap <leader><space> :noh<cr>:match none<cr>:2match none<cr>:3match none<cr>

" Open a Quickfix window for the last search.
nnoremap <silent> <leader>/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" Display whitespace characters
nmap <silent> <leader>h :set nolist!<CR>
" Strip whitespace characters
nnoremap <leader>H :%s/\s\+$//<cr>:let @/=''<CR>

" Don't move on *
nnoremap * mq*`q

" Rewrap paragraph of text
nnoremap <leader>Q gqip

" Reselect text I just pasted
nnoremap <leader>V V`]

" NERDtree
let NERDTreeChDirMode=0
"let NERDTreeDirArrows=0
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1
map <leader>d :NERDTreeToggle<CR>
map <leader>t :NERDTreeFind<CR>

" Tagbar
"let g:tagbar_ctags_bin = '/usr/local/Cellar/ctags/5.8/bin/ctags'
"map <leader>g :TagbarOpen<CR>

" JSHint
"map <leader>j :JSHint<CR>

" Gist
let g:gist_clip_command = 'pbcopy'
let g:github_user = 'dlimeb'

" Vimwiki
let wiki = {}
"let wiki.path = '/Users/dlimeb/Development/repos/vimwiki'
let wiki.path = '/Users/dlimeback/Dropbox/personal/vimwiki'
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
"let wiki.diary_header = 'Journal'
"let wiki.diary_index = 'index'
"let wiki.diary_rel_path = '/'
"let wiki.diary_link_count = 5
"let wiki.diary_sort = 'asc'
let g:vimwiki_hl_headers = 1        " different header levels get different colours
let g:vimwiki_hl_cb_checked = 1     " checked todos get a colour
let g:vimwiki_folding = 1           " fold everything up by default
let g:vimwiki_fold_trailing_empty_lines = 1
let g:vimwiki_table_mappings = 0    " free up tab key for snipmate use
let g:vimwiki_ext2syntax = {}       " don't set filetype to 'vimwiki' for all markdown files
let g:vimwiki_list = [wiki]
map <leader>w<leader>g :VimwikiDiaryGenerateLinks<CR>

" Fuzzy Finder
" See also settings: g:fuzzy_roots, g:fuzzy_ceiling, g:fuzzy_ignore, g:fuzzy_matching_limit
map <leader>f :FufBuffer<CR>
map <leader>e :FufCoverageFile<CR>

" Airline / Powerline
let g:airline_powerline_fonts = 1

" snipMate
let g:snippets_dir = '~/.vim/snippets'

" Surround
let g:surround_{char2nr("b")} = "{% block\1 \r..*\r &\1 %}\n\r\n{% endblock %}\n"
let g:surround_{char2nr("c")} = "{% comment %}\n\r\n{% endcomment %}"
let g:surround_{char2nr("i")} = "{% trans \"\r\" %}"

" Ack
map <leader>a :Ack<space>

" bufexplorer
let g:bufExplorerDetailedHelp=0

" Show info about syntax/color of word
map -a :call SyntaxAttr()<CR>

" Quick, make it bulleted
nnoremap _ :s/^/- /<CR>:noh<CR>

" Scroll viewport by a few lines
nnoremap <C-e> <C-e><C-e><C-e>
nnoremap <C-y> <C-y><C-y><C-y>

" Line numbering
" Toggle on and off
"nmap <leader>nn :set invnumber<CR>
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
nmap <leader>, vii<<cr><esc>
"nmap <leader>. vii><cr><esc>

" Faster prev/next through quickfix errors
nmap <leader>n :cnext<cr>
nmap <leader>p :cprev<cr>

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
map <c-Right> 10<c-w>>
map <c-Left> 10<c-w><

" Insert timestamp
iab <expr> _ds strftime("\%Y-\%m-\%d \%H:\%M:\%S")
iab <expr> _ts strftime("\%Y-\%m-\%d \%H:\%M:\%S")

" Write file when you forget to sudo first
cmap w!! w !sudo tee % >/dev/null

" Preview markdown documents in browser
"nmap <leader>mp  :! ~/bin/Markdown.pl "%" > /tmp/preview.html && open -a "Google Chrome" /tmp/preview.html<CR><CR>

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
"function HtmlEscape()
  "silent s/&/\&amp;/
  "silent s/</\&lt;/
  "silent s/>/\&gt;/
"endfunction

"function HtmlUnEscape()
  "silent s/&lt;/</
  "silent s/&gt;/>/
  "silent s/&amp;/\&/
"endfunction

"function Tab2()
    "set tabstop=2
    "set softtabstop=2
    "set shiftwidth=2
"endfunction

"function Tab4()
    "set tabstop=4
    "set softtabstop=4
    "set shiftwidth=4
"endfunction

" Quick spacing switching
"map <leader>2 :call Tab2()<CR>
"map <leader>4 :call Tab4()<CR>
