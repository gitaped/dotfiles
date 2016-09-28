"---------------
"User Interface|
"---------------
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

"--------------
"Spaces & Tabs|
"--------------
set tabstop=4                  " Default spaces in a <TAB>
set softtabstop=4              " Default spaces when hitting <TAB> in Insert mode
set shiftwidth=4               " Default number of spaces inserted for indentation
set smarttab                   " Use tabs at start of line, spaces eleswhere
set expandtab                  " Insert spaces whenever tab key is pressed
set autoindent                 " Copy indent from current line when starting new line
set nowrap                     " Do not wrap long lines
set colorcolumn=80             " Bar at 80 char mark
set backspace=indent,eol,start " Allow backspace key

"-----------
"Formatting|
"-----------
set formatoptions-=t "Prevent autowrapping
set formatoptions+=c "Format Comments
set formatoptions+=r "Continue comments by default

"-----
"Text|
"-----
" set textwidth=80	        "Wrap lines at column 80
set showmatch             " Highlight matching paren
set matchtime=1           " 0.1 seconds to show matching paren
set clipboard=unnamedplus " Allows vim to interact with system clipboard

"------------
" Read/Write|
"------------
set autowrite " Automatically save file when buffer changes
set autoread  " Automatically read changed files
set confirm   " Prompt dialog to save unsaved changes"

"-------
"Sounds|
"-------
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"---------------
"Colours & Fonts|
"---------------
syntax enable       " Turn on syntax highlighting
set t_Co=256        " Number of colours
set background=dark	" For the longevity of my eyes
colorscheme badwolf

"------------
"Command Line|
"-------------
set wildmenu                                     " Better command-line completion
set wildmode=list:full
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " Image types
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
"----------
"Searching|
"----------
set incsearch       "search as characters are entered
set hlsearch        "search for all matches
set ignorecase      "ignore case when searching
set smartcase       "for unexpected results

"-------
"Backup|
"-------
set nobackup        " Don't make a backup before overwriting file
set noswapfile      " No swap files

"-------
"Timing|
"-------
set timeoutlen=500	" Delay between commands/mappings in milliseconds
set ttimeoutlen=0   " Delay after key codes in milliseconds

"----------
"Splitting|
"----------
set splitbelow      "Split new horizontal window below current one
set splitright      "Split new vertical window to the right of curretnt one

"----------
"Scrolling|
"----------
set scrolloff=20     " Minimum number of lines to keep above and below cursor
set sidescrolloff=10 " Minimum number of columns to keep to left and right of cursor"

"---------
"Spelling|
"---------
set spelllang=en_gb   " Use Commonwealth dictionary
set nospell           " Turn off spell checking

"--------
"Message|
"--------
set shortmess=   " Statusline messages
set shortmess+=s " Don't give search hit BOTTOM, continuing at TOP or search hit TOP, continuing at BOTTOM" messages
set shortmess+=l " Use 999L, 888C instead of "999 lines, 888 characters
set shortmess+=f " Use (3 of 5) instead of (file 3 of 5)
set shortmess+=c " Don't give ins-completion-menu messages

"-----
"Grep|
"-----
set grepprg=ack  "Use Ack as search tool
