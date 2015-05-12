"Ansley Peduru
".vimrc

"General
set nocompatible    "no Vi compatibility mode
set mouse=a			"Allow mouse usage

"UI
set number          "show line numbers
set ruler	        "show current row and line
set cursorline  	"highlight current line
set showcmd         "show last command
set title	        "vim decides title of terminal
set showmode    	"show current mode (insert,visual, etc)
set showcmd         "show last commands in status line
set laststatus=2    "display status line


"Spaces & Tabs
set tabstop=4	    "TAB MASTER RACE
set softtabstop=4
set shiftwidth=4
set smarttab        "use tabs at start of line, spaces eleswhere
set autoindent
set cindent	        "C style indenting

"Text
set textwidth=80	"Wrap lines at column 80
set showmatch
set matchtime=1

"Colors & Fonts
syntax enable

set t_Co=256
set background=dark	"DARKSKIN FAM
colorscheme molokai  


"Searching
set incsearch       "search as characters are entered
set hlsearch        "search for all matches
set ignorecase      "ignore case when searching
set smartcase       "for unexpected results




