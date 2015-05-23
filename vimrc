"Vim Configuartion
"Ansley Peduru

"General/Vundle 
set nocompatible    "no Vi compatibility mode
filetype off		"required for Vundle

set runtimepath+=/home/ansley/Github/dotfiles/vim/bundle/Vundle.vim
call vundle#begin()

"Plugins 
Plugin 'gmarik/Vundle.vim' "Let Vundle manage Vundle
Plugin 'Valloric/YouCompleteMe'	"Autocompletion FTW 
Plugin 'scrooloose/syntastic'	"Syntax checking hax, see syntastic below

call vundle#end()
filetype plugin indent on
"Vundle Plugin HELP
" :PluginList		-lists configured plugins
" :PluginInstall	-installs plugins 
" "PluginUpdate		-update plugins
" :PluginSearch foo	-searches for foo
" :PluginClean		-confirms removal of unused plugins

"UI
set number          "show line numbers
set ruler	        "show current row and line
set cursorline  	"highlight current line
set showcmd         "show last command
let &titlestring = expand('%:p') "show full directory of working file
set title	        "vim decides title of terminal
set showmode    	"show current mode (insert,visual, etc)
set showcmd         "show last commands in status line
set laststatus=2    "display status line
set mouse=a			"Allow mouse usage


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
set background=dark	"for the longevity of my eyes
colorscheme molokai


"Searching
set incsearch       "search as characters are entered
set hlsearch        "search for all matches
set ignorecase      "ignore case when searching
set smartcase       "for unexpected results

"Syntastic



