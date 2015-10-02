"-----------------
"General & Vundle|
"-----------------
set nocompatible    "no Vi compatibility mode
filetype off		"required for Vundle
set runtimepath+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'		 "Let Vundle manage Vundle
Plugin 'Shougo/neocomplete.vim'
Plugin 'scrooloose/nerdtree'	 "Filesystem tree
Plugin 'scrooloose/syntastic'	 "Syntax checking
Plugin 'scrooloose/nerdcommenter' "Orgasmic commenting
Plugin 'bling/vim-airline'	     "Status/Tabline
"Plugin 'ervandew/supertab'       "Tab Completion + cycle thru via YCM
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'Raimondi/delimitMate'
"Plugin 'kien/ctrlp'			"Try these at home
"Plugin 'sjl/gundo'

call vundle#end()
filetype plugin indent on
"Vundle Plugin HELP
" :PluginList		-lists configured plugins
" :PluginInstall	-installs plugins
" "PluginUpdate		-update plugins
" :PluginSearch foo	-searches for foo
" :PluginClean		-confirms removal of unused plugins
