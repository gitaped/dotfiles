"-----------------
"General & Vundle|
"-----------------
set nocompatible    "no Vi compatibility mode
filetype off		"required for Vundle
set runtimepath+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'				"Let Vundle manage Vundle
Plugin 'Valloric/YouCompleteMe'			"Autocompletion
Plugin 'scrooloose/nerdtree'			"Filesystem tree
Plugin 'scrooloose/syntastic'			"Syntax checking
Plugin 'scrooloose/nerdcommenter'		"Orgasmic commenting
Plugin 'vim-airline/vim-airline'		"Status/Tabline
Plugin 'vim-airline/vim-airline-themes' "Status/Tabline themes
Plugin 'mhinz/vim-signify'				"Display diff in gutter	(all VCS)
Plugin 'majutsushi/tagbar'				"Displays tags in a window
Plugin 'ctrlpvim/ctrlp.vim'				"Fuzzy finder
Plugin 'tpope/vim-surround'				"Quoting/Parenthesizing made simple
Plugin 'Chiel92/vim-autoformat'			"Integrating exisiting code formatters
Plugin 'tmhedberg/SimpylFold'			"No-BS Python code folding
Plugin 'henrik/vim-indexed-search'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'cohama/lexima.vim'				"Autocompletion for quotes, parens, brackets
"Plugin 'xolox/vim-easytags'
"Plugin 'junegunn/vim-easy-align
"Plugin 'terryma/vim-expand-region'
"Plugin 'vim-scripts/YankRing.vim'

call vundle#end()
filetype plugin indent on	"Filetype detection after Vundle executes
"Vundle Plugin HELP
" :PluginList		-lists configured plugins
" :PluginInstall	-installs plugins
" "PluginUpdate		-update plugins
" :PluginSearch foo	-searches for foo
" :PluginClean		-confirms removal of unused plugins

