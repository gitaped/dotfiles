"---------------
"Plugin Manager|
"---------------

set nocompatible    "no Vi compatibility mode
filetype indent on
call plug#begin('~/dotfiles/vim/plugged')

"Autocompletion
Plug 'Valloric/YouCompleteMe'
", { 'do':'./install.py --clang-completer' }

"Filesystem tree
Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle' }

"Syntax checking
Plug 'scrooloose/syntastic'

"Orgasmic commenting
Plug 'scrooloose/nerdcommenter'

"Status/Tabline
Plug 'vim-airline/vim-airline'

"Status/Tabline themes
Plug 'vim-airline/vim-airline-themes'

"Display diff in gutter	(all VCS)
Plug 'mhinz/vim-signify'

"Displays tags in a window
Plug 'majutsushi/tagbar'

"Fuzzy finder
"Plug 'ctrlpvim/ctrlp.vim'

"Quoting/Parenthesizing made simple
Plug 'tpope/vim-surround'

" Code autoformatter
Plug 'Chiel92/vim-autoformat', { 'for': ['python','cpp'] }

"No-BS Python code folding
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }

"Show number of returned searches
Plug 'henrik/vim-indexed-search'

"Whitespace removal
Plug 'ntpeters/vim-better-whitespace'

"Autocompletion for quotes, parens, brackets
"Plug 'cohama/lexima.vim
Plug 'Raimondi/delimitMate'
"Plug 'Townk/vim-autoclose'


"Vim git wrapper
Plug 'tpope/vim-fugitive'

"Seamlessly switch between vim and tmux
Plug 'christoomey/vim-tmux-navigator'

" LateX
Plug 'lervag/vimtex', { 'for': 'tex' }

"Select larger regions of text in visual mode
Plug 'terryma/vim-expand-region'

"Plug 'LucHermitte/lh-vim-lib'
"Plug 'LucHermitte/VimFold4C'
"Plug 'xolox/vim-easytags'
"Plug 'junegunn/vim-easy-align
"Plug 'vim-scripts/YankRing.vim'
"Plug 'sjl/gundo.vim'
"Plug 'mbbill/undotree'

call plug#end()
" Plugin HELP
"
" :PlugStatus		-lists configured plugins
" :PlugUpgrade		-upgrade Vim-plug itself
" :PlugInstall		-installs plugins
" :PlugUpdate		-update plugins
" :PlugClean		-confirms removal of unused plugins

