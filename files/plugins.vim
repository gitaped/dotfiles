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

"Quoting/Parenthesizing made simple
Plug 'tpope/vim-surround'

" Code autoformatter
Plug 'Chiel92/vim-autoformat', { 'for': ['python','cpp'] }
"
"No-BS Python code folding
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }

"Show number of returned searches
Plug 'henrik/vim-indexed-search'

"Whitespace removal
Plug 'ntpeters/vim-better-whitespace'

"Autocompletion for quotes, parens, brackets
Plug 'Raimondi/delimitMate'

"Ack wrapper
Plug 'mileszs/ack.vim'

"Seamlessly switch between vim and tmux
Plug 'christoomey/vim-tmux-navigator'

"Select larger regions of text in visual mode
Plug 'terryma/vim-expand-region'

"Controls and updates tags for source code
Plug 'xolox/vim-easytags'

"Miscellaneous auto-load vim scripts ~> required for vim-easytags
Plug 'xolox/vim-misc'

"Maintains history of previous yanks/deletions
"Plug 'vim-scripts/YankRing.vim'

"Vim git wrapper
"Plug 'tpope/vim-fugitive'


call plug#end()
"-----------
" Plug HELP|
"-----------
" :PlugStatus		-lists configured plugins
" :PlugUpgrade		-upgrade Vim-plug itself
" :PlugInstall		-installs plugins
" :PlugUpdate		-update plugins
" :PlugClean		-confirms removal of unused plugins

