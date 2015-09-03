"Vim Configuartion
"Ansley Peduru

"General/Vundle 
set nocompatible    "no Vi compatibility mode
filetype off		"required for Vundle

set runtimepath+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin()

"Plugins 
Plugin 'gmarik/Vundle.vim' "Let Vundle manage Vundle
"Plugin 'Valloric/YouCompleteMe'	"AutoCompletion FTW
Plugin 'scrooloose/nerdtree'	"Filesystem tree
Plugin 'scrooloose/syntastic'	"Syntax checking

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
set tabstop=4	    "TAB MASTER RACE jk
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


"Mappings
"Remap ESC (enable CAPS LOCK as CTRL using gnome tweak tool) 
"Arrow keys r 4 plebs
nnoremap <Up> :echoe "Use k"<CR>	
nnoremap <Down> :echoe "Use j"<CR>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
"Use semicolon in normal mode without shifting
nnoremap ; :
"Directional Keys
noremap j gj
noremap k gk

"TODO: Add NERD Tree bindings, syntastic settings, Arduino syntax
"NERD Tree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Syntastic
