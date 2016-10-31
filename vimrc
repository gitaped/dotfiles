"--------------
"vimrc        |
"Ansley Peduru|
"--------------

"---------
"Settings|
"---------

"User Interface
set number               " Show line numbers
set relativenumber       " Show number of lines above and below
set ruler	               " Show current row and line
set cursorline  	       " Highlight current line
set title	               " Vim decides title of terminal
set showmode    	       " Show current mode (insert,visual, etc)
set laststatus=2         " Display status line
set mouse=a			         " Allow mouse usage
set completeopt-=preview " Don't show preview window
set term=screen-256color " Use 256 colours
set ttyfast              " Fast terminal connection
set lazyredraw           " Screen will not redraw immediately
" set cmdheight=2

"Spaces & Tabs
set tabstop=4                  " Default spaces in a <TAB>
set softtabstop=4              " Default spaces when hitting <TAB> in Insert mode
set shiftwidth=4               " Default number of spaces inserted for indentation
set smarttab                   " Use tabs at start of line, spaces eleswhere
set expandtab                  " Insert spaces whenever tab key is pressed
set autoindent                 " Copy indent from current line when starting new line
set nowrap                     " Do not wrap long lines
set colorcolumn=80             " Bar at 80 character mark
set backspace=indent,eol,start " Allow backspace key

"Formatting
set formatoptions-=t "Prevent autowrapping
set formatoptions+=c "Format Comments
set formatoptions+=r "Continue comments by default

"Text
" set textwidth=80	        "Wrap lines at column 80
set showmatch             " Highlight matching paren
set matchtime=1           " 0.1 seconds to show matching paren
set clipboard=unnamedplus " Allows vim to interact with system clipboard

"Read/Write
set autowrite " Automatically save file when buffer changes
set autoread  " Automatically read changed files

"Sounds
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"Colours & Fonts
syntax enable       " Turn on syntax highlighting
set t_Co=256        " Number of colours
set background=dark	" For the longevity of my eyes
colorscheme badwolf

"Command Line
set wildmenu                                     " Better command-line completion
set wildmode=list:full
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " Image types
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files

"Searching
set incsearch       "search as characters are entered
set hlsearch        "search for all matches
set ignorecase      "ignore case when searching
set smartcase       "for unexpected results

"Backup
set nobackup        " Don't make a backup before overwriting file
set noswapfile      " No swap files

"Timing
set timeoutlen=500	" Delay between commands/mappings in milliseconds
set ttimeoutlen=0   " Delay after key codes in milliseconds

"Splitting
set splitbelow      "Split new horizontal window below current one
set splitright      "Split new vertical window to the right of curretnt one

"Scrolling
set scrolloff=8     " Minimum number of lines to keep above and below cursor
set sidescrolloff=8 " Minimum number of columns to keep to left and right of cursor"

"Spelling
set spelllang=en_gb   " Use Commonwealth dictionary
set nospell           " Turn off spell checking

"Message
set shortmess=   " Statusline messages
set shortmess+=s " Don't give search hit BOTTOM, continuing at TOP or search hit TOP, continuing at BOTTOM" messages
set shortmess+=l " Use 999L, 888C instead of "999 lines, 888 characters
set shortmess+=f " Use (3 of 5) instead of (file 3 of 5)
set shortmess+=c " Don't give ins-completion-menu messages

"Grep
set grepprg=ack  "Use Ack as search tool

"Statusline
set statusline=                              " clear the statusline
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%-4.(%l,%c%V%)\ %<%P         " offset

"---------
"Mappings|
"---------

let mapleader = ","

"Remap ESC
inoremap <silent> <ESC> <ESC>`^
inoremap jk <ESC>l

"Disable exit
map <C-z> <Nop>

"Function keys
nnoremap <F1> <nop>
map <F3> :StripWhitespace<CR>
map <F4> :buffers<CR>:buffer<Space>

"General search
map <C-f> :Ack!<space>
"Search word under cursor
map <C-d> :Ack! <C-r><C-w><space>

"Use semicolon in normal mode without shifting
nnoremap ; :

"Directional Keys
nnoremap j gj
nnoremap k gk

"Remap start and end of line keys
nnoremap H ^
nnoremap L $

"Create blank line above and below without entering Insert mode
nmap <leader>o o<Esc>
nmap <leader>O O<Esc>

"Yank to end of line
nmap yL y$
"Yank to start of line
nmap yH y^

"Delete to end of line
nmap dL d$
"Delete to start of line
"nnoremap dH d^<Bar>x
nmap dH d^

"Switching between buffers
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprev<CR>

"Hit space to turn off highlighted search results
nnoremap <silent> <Space> :nohlsearch<CR><ESC>

" Enter does nothing in normal mode
nmap <silent> <CR> <nop>

"Indentation shifting: prevents de-select after shift
vnoremap < <gv
vnoremap > >gv

"Sane pane switching
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

"Select Block
nmap <leader>v V`}

"Resize split windows
nmap + <C-w>+
nmap - <C-w>-
nmap \| <C-w><
nmap \  <C-w>>

"Prevent accidently deleting a fold
nmap zd <Nop>
nmap zE <Nop>

" Disabling man page on word hover
map <S-k> <Nop>

"Add space without entering and exiting insert mode
nmap <leader><space> i<space><ESC>

"Yank/Delete entire buffer
nmap yY :%y<c-r>=v:register<cr><cr>
nmap dD :%d<c-r>=v:register<cr><cr>

"---------------
"Plugin Manager|
"---------------

" :PlugStatus		lists configured plugins
" :PlugUpgrade	upgrade Vim-plug itself
" :PlugInstall	installs plugins
" :PlugUpdate		update plugins
" :PlugClean		confirms removal of unused plugins

set nocompatible    "no Vi compatibility mode
filetype indent on
call plug#begin('~/dotfiles/vim/plugged')

"Language Autocompletion
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
"Plug 'Rip-Rip/clang_complete', { 'do': 'make install', 'for': ['c','cpp'] }
"Plug 'justmao945/vim-clang', { 'for': 'c' }
"Plug 'rust-lang/rust.vim', { 'for': 'rust' }

"Syntax checking
Plug 'scrooloose/syntastic'

"Commenting
Plug 'tpope/vim-commentary'

"Display git diff in gutter
Plug 'airblade/vim-gitgutter'

"No-BS Python code folding
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }

"Show number of returned searches
Plug 'henrik/vim-indexed-search'

"Whitespace removal
Plug 'ntpeters/vim-better-whitespace'

"Autocompletion for quotes, parens, brackets
Plug 'jiangmiao/auto-pairs'

"Ack wrapper
Plug 'mileszs/ack.vim'

"Fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

"Seamlessly switch between vim and tmux
Plug 'christoomey/vim-tmux-navigator'

"Vim notetaking
" Plug 'vimwiki/vimwiki', { 'for': 'wiki' }
Plug 'xolox/vim-notes', { 'for':'txt', 'on': 'Note' }
" Plug 'xolox/vim-misc', { 'for':'txt', 'on': 'Note' }

call plug#end()

"----
"Ack|
"----

let g:ackhighlight = 1
let g:ack_autoclose = 1
let g:ack_default_options = ' -s -H --nocolor --nogroup --ignore-case'

"------
"CtrlP|
"------

let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"----------
"GitGutter|
"----------

let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_max_signs = 500
let g:gitgutter_map_keys = 1

"---------------
"Indexed Search|
"---------------

let g:indexed_search_dont_move = 1

"----------
"Syntastic|
"----------
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol =  "✖"
let g:syntastic_warning_symbol = "!"
let g:syntastic_always_populate_loc_list = 1

"-----------
"Whitespace|
"-----------
highlight ExtraWhitespace ctermbg=blue

"------
"Notes|
"------

let g:notes_directories = ['~/Documents/Notes', '~/Dropbox/CLAS100/Notes']
let g:notes_suffix = '.txt'
let g:notes_title_sync = 'rename_file'
