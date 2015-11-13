"-----------------
"General & Vundle|
"-----------------
set nocompatible    "no Vi compatibility mode
filetype off		"required for Vundle
set runtimepath+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'			"Let Vundle manage Vundle
Plugin 'scrooloose/nerdtree'		"Filesystem tree
Plugin 'scrooloose/syntastic'		"Syntax checking
Plugin 'scrooloose/nerdcommenter'	"Orgasmic commenting
Plugin 'bling/vim-airline'			"Status/Tabline
Plugin 'airblade/vim-gitgutter'		"Display diff in gutter (git)
Plugin 'mhinz/vim-signify'			"Display diff in gutter	(all VCS) 
"Plugin 'Raimondi/delimitMate'		"Autocompletion for quotes, parens, brackets
Plugin 'jiangmiao/auto-pairs'		"Better autocompletion for quotes, parens, brackets
Plugin 'majutsushi/tagbar'			"Displays tags in a window
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Valloric/YouCompleteMe'     "Autocompletion 
Plugin 'kien/ctrlp.vim'				"Fuzzy finder	
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-surround'
Plugin 'Chiel92/vim-autoformat'
"Plugin 'Shougo/neocomplete.vim'	"Autocompletion 
Plugin 'tpope/vim-abolish'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'ervandew/supertab'
"Plugin 'klen/python-mode'

call vundle#end()
filetype plugin indent on	"Filetype detection after Vundle executes
"Vundle Plugin HELP
" :PluginList		-lists configured plugins
" :PluginInstall	-installs plugins
" "PluginUpdate		-update plugins
" :PluginSearch foo	-searches for foo
" :PluginClean		-confirms removal of unused plugins
