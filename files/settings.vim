"---------------
"User Interface|
"---------------
set number          "show line numbers
set relativenumber  "show number of lines above and below
set ruler	        "show current row and line
set cursorline  	"highlight current line
set showcmd         "show last command
let &titlestring = expand('%:p') "show full directory of working file
set title	        "vim decides title of terminal
set showmode    	"show current mode (insert,visual, etc)
set laststatus=2    "display status line
set mouse=a			"Allow mouse usage
set completeopt-=preview

"--------------
"Spaces & Tabs|
"--------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab        "use tabs at start of line, spaces eleswhere
set autoindent
set formatoptions-=t "Hack to prevent autowrapping
set formatoptions+=c "Format Comments
set formatoptions+=r "Continue comments by default
set nowrap
set colorcolumn=80
set backspace=indent,eol,start

"-----
"Text|
"-----
set textwidth=80	"Wrap lines at column 80
set showmatch
set matchtime=1
set clipboard=unnamedplus "allows vim to interact with system clipboard

"-------
"Sounds|
"-------
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"---------------
"Colours & Fonts|
"---------------
syntax enable
set t_Co=256
set background=dark	"for the longevity of my eyes
colorscheme badwolf
"set guifont =  Ubuntu\ Mono\ derivative\ Powerline\ Regular\ 13

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

"--------
"Mapping|
"--------
set timeoutlen=500	"Delay between commands in milliseconds

"----------
"Splitting|
"----------
set splitbelow
set splitright

"----------
"Scrolling|
"----------
set scrolloff=20	"keeps cursor 20 lines above and below end and start of file

"---------
"Spelling|
"---------
"TODO: add this for git and markdown only
set spelllang=en_gb
set nospell
