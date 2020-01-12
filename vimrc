"---------------
"Ansley's vimrc|
"---------------
set nocompatible    "no Vi compatibility mode
"---------
"Settings|
"---------

"Line
set number               " Show line numbers
set relativenumber       " Show number of lines above and below
set ruler	               " Show current row and line
set nostartofline        " Don't always start at the start of a line
set cursorline  	       " Highlight current line

"UI
set title	               " Vim decides title of terminal
set showmode    	       " Show current mode (insert,visual, etc)
set laststatus=2         " Always display status line, set this back to 2 later
set completeopt-=preview " Don't show preview window
set term=screen-256color " Use 256 colours
set ttyfast              " Fast terminal connection
set lazyredraw           " Screen will not redraw immediately
set colorcolumn=80       " Bar at 80 character mark
set hidden

"Mouse
set mouse=a	  " Allow mouse usage
set mousehide " Hide the mouse while typing

"Spaces & Tabs
set tabstop=4                  " Default spaces in a <TAB>
set softtabstop=4              " Default spaces when hitting <TAB> in Insert mode
set shiftwidth=4               " Default number of spaces inserted for indentation
set smarttab                   " Use tabs at start of line, spaces eleswhere
set expandtab                  " Insert spaces whenever tab key is pressed
set autoindent                 " Copy indent from current line when starting new line
set nowrap                     " Do not wrap long lines
set backspace=indent,eol,start " Allow backspace key

"Formatting
set formatoptions-=t "Prevent autowrapping
set formatoptions+=c "Format Comments
set formatoptions+=r "Continue comments by default

"Text
set textwidth=80	        "Wrap lines at column 80
set showmatch             " Highlight matching paren
set matchtime=1           " 0.1 seconds to show matching paren

" Allows vim to interact with system clipboard
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif

"Read/Write
set autowrite " Automatically save file when buffer changes
set autoread  " Automatically read changed files

"Sounds
set noerrorbells visualbell t_vb=        " This setting turns off sounds...
autocmd GUIEnter * set visualbell t_vb=  " ...I think.

"Colours & Fonts
syntax enable       " Turn on syntax highlighting
set t_Co=256        " Number of colours
set background=dark	" For the longevity of my eyes
colorscheme badwolf

"Command Line
set wildmenu                                     " Better cmd completion
set wildmode=list:full
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " Image types
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.pyc                            " python bytecode
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
set scrolloff=20     " Minimum number of lines to keep above and below cursor
set sidescrolloff=10 " Minimum number of columns to keep to left and right of cursor"

"Spelling
set spelllang=en_gb   " Use Commonwealth dictionary
set nospell           " Turn off spell checking

"Message
set shortmess=   " Statusline messages
set shortmess+=s " Don't give search hit BOTTOM, continuing at TOP or search hit TOP, continuing at BOTTOM messages
set shortmess+=l " Use 999L, 888C instead of 999 lines, 888 characters
set shortmess+=f " Use (3 of 5) instead of (file 3 of 5)
set shortmess+=c " Don't give ins-completion-menu messages

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

"File
set modeline

"---------
"Mappings|
"---------

let mapleader = ","

"Remap ESC
inoremap <silent> <ESC> <ESC>`^
" inoremap jk <ESC>l

"Disable exit
map <C-z> <Nop>

"Function keys
nnoremap <F1> <nop>
map <F2> :StripWhitespace<CR>
map <F3> :buffers<CR>:buffer<Space>

"General search
map <C-f> :Ack!<space>
"Search word under cursor
map <C-d> :Ack! <C-r><C-w>

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

"Yank entire buffer
nmap yY :%y<c-r>=v:register<cr><cr>
"Delete entire buffer
nmap dD :%d<c-r>=v:register<cr><cr>

"---------------
"Plugin Manager|
"---------------

" :PlugStatus		lists configured plugins
" :PlugUpgrade	upgrade Vim-plug itself
" :PlugInstall	installs plugins
" :PlugUpdate		update plugins
" :PlugClean		confirms removal of unused plugins

filetype indent on
call plug#begin('~/dotfiles/vim/plugged')

"Autocompletion
Plug 'maralla/completor.vim'

"Language
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'alcesleo/vim-uppercase-sql', { 'for': 'sql' }
Plug 'cespare/vim-toml', { 'for': 'toml' }
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }
Plug 'chr4/nginx.vim', { 'for': 'nginx' }
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'fatih/vim-go', { 'for': 'go'  }
Plug 'hashivim/vim-terraform', {'for': 'terraform'}
Plug 'google/vim-jsonnet', {'for': 'jsonnet'}
Plug 'mrk21/yaml-vim', {'for': 'yaml'}

"Asynchronous Lint Engine
Plug 'w0rp/ale'

"Commenting
Plug 'tpope/vim-commentary'

"Display git diff in gutter
Plug 'airblade/vim-gitgutter'

"Show number of returned searches
Plug 'henrik/vim-indexed-search'

"Whitespace removal
Plug 'ntpeters/vim-better-whitespace', {'on': 'StripWhitespace' }

"Autocompletion for quotes, parens, brackets
Plug 'jiangmiao/auto-pairs'

"Ack wrapper
Plug 'mileszs/ack.vim'

call plug#end()

"----
"Ack|
"----
let g:ackhighlight = 1
let g:ack_autoclose = 1
let g:ackprg = 'rg --vimgrep --no-heading'

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

""----
""Ale|
""----
let g:ale_sign_column_always = 1
let g:ale_sign_error="✖"
let g:ale_sign_warning="!"

"-----------
"Whitespace|
"-----------
highlight ExtraWhitespace ctermbg=blue

"-----
"Rust|
"-----
let g:rust_recommended_style = 1
let g:rust_fold=1

"-----------
" Completor|
"-----------
let g:completor_racer_binary = '~/.cargo/bin/racer'
let g:completor_python_binary = '/usr/bin/python3'
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>\<CR>" : "\<CR>"

"----------
"Terraform|
"----------
let g:terraform_fmt_on_save=1"
