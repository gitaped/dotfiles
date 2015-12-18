"-----------------
"General & Vundle|
"-----------------
set nocompatible    "no Vi compatibility mode
filetype off		"required for Vundle
set runtimepath+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'					"Let Vundle manage Vundle
"Plugin 'Valloric/YouCompleteMe'			"FUCK YCM; PIECE OF SHIT 
Plugin 'Shougo/neocomplete.vim'				"Autocompletion; SOON TO BE DEPRECATED B/C SHITTY FOR PYTHON3
Plugin 'scrooloose/nerdtree'				"Filesystem tree
Plugin 'scrooloose/syntastic'				"Syntax checking
Plugin 'scrooloose/nerdcommenter'			"Orgasmic commenting
Plugin 'bling/vim-airline'					"Status/Tabline
Plugin 'airblade/vim-gitgutter'				"Display diff in gutter (git)
Plugin 'mhinz/vim-signify'					"Display diff in gutter	(all VCS); MIGHT NOT NEED THIS ANYMORE
Plugin 'Raimondi/delimitMate'				"Autocompletion for quotes, parens, brackets
Plugin 'majutsushi/tagbar'					"Displays tags in a window
Plugin 'nathanaelkane/vim-indent-guides'	"Visually display indentation levels
Plugin 'kien/ctrlp.vim'						"Fuzzy finder; THIS PROJECT IS UNMAINTAINED	
"Plugin 'ctrlpvim/ctrlp.vim'				"Fuzzy finder; USE THIS ONE
Plugin 'SirVer/ultisnips'					"The ultimate snippet solution; RARELY USE THESE SNIPPETS EFFICIENTLY, TIME TO DEPRECATE
Plugin 'tpope/vim-surround'					"Quoting/Parenthesizing made simple
Plugin 'Chiel92/vim-autoformat'				"Integrating exisiting code formatters
Plugin 'tpope/vim-abolish'					"Search, substitute, abbreviate word variants
Plugin 'terryma/vim-multiple-cursors'		"Sublime Text style multiple selections
Plugin 'davidhalter/jedi-vim'				"Bringing back YCM soon; don't need this
"Plugin 'ervandew/supertab'
"Plugin 'klen/python-mode'
Plugin 'tmhedberg/SimpylFold'				"No-BS Python code folding
"Plugin 'xolox/vim-easytags'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'junegunn/vim-easy-align
"Plugin 'terryma/vim-expand-region'
"Plugin 'ntpeters/vim-better-whitespace'
"Plugin YANKRING

call vundle#end()
filetype plugin indent on	"Filetype detection after Vundle executes
"Vundle Plugin HELP
" :PluginList		-lists configured plugins
" :PluginInstall	-installs plugins
" "PluginUpdate		-update plugins
" :PluginSearch foo	-searches for foo
" :PluginClean		-confirms removal of unused plugins
