"---------------
"User Interface|
"---------------
set number          "show line numbers
set ruler	        "show current row and line
set cursorline  	"highlight current line
set showcmd         "show last command
let &titlestring = expand('%:p') "show full directory of working file
set title	        "vim decides title of terminal
set showmode    	"show current mode (insert,visual, etc)
set laststatus=2    "display status line
set mouse=r			"Allow mouse usage

"--------------
"Spaces & Tabs|
"--------------
set tabstop=4	    "TAB MASTER RACE jk
set softtabstop=4
set shiftwidth=4
set smarttab        "use tabs at start of line, spaces eleswhere
set autoindent
set cindent	        "C style indenting

"-----
"Text|
"-----
set textwidth=80	"Wrap lines at column 80
set showmatch
set matchtime=1
set pastetoggle=<F3>

"-------
"Sounds|
"-------
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"---------------
"Colors & Fonts|
"---------------
syntax enable
set t_Co=256
set background=dark	"for the longevity of my eyes
colorscheme badwolf

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
set nobackup
set noswapfile
