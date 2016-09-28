"---------------
"Plugin Manager|
"---------------

set nocompatible    "no Vi compatibility mode
filetype indent on
call plug#begin('~/dotfiles/vim/plugged')

"Autocompletion
Plug 'Valloric/YouCompleteMe', { 'do':'./install.py --clang-completer' }

"Syntax checking
Plug 'scrooloose/syntastic'
" Plug 'alfredodeza/khuno.vim', { 'for': 'python' }

"Orgasmic commenting
"Plug 'scrooloose/nerdcommenter'
"Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-commentary'

"Display diff in gutter	(all VCS)
"Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

"Quoting/Parenthesizing made simple
" Plug 'tpope/vim-surround'

" Code formatter
Plug 'Chiel92/vim-autoformat', { 'for': ['python','cpp'] }
"
"No-BS Python code folding
" Plug 'tmhedberg/SimpylFold', { 'for': 'python' }
Plug 'Konfekt/FastFold'

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

"Vim notetaking
" Plug 'xolox/vim-notes', {'on': 'Note'}
"Miscellaneous auto-load vim scripts
" Plug 'xolox/vim-misc', {'on': 'Note'}

"Select larger regions of text in visual mode
"Plug 'terryma/vim-expand-region'

"Maintains history of previous yanks/deletions
"Plug 'vim-scripts/YankRing.vim'

call plug#end()
"-----------
" Plug HELP|
"-----------
" :PlugStatus		-lists configured plugins
" :PlugUpgrade		-upgrade Vim-plug itself
" :PlugInstall		-installs plugins
" :PlugUpdate		-update plugins
" :PlugClean		-confirms removal of unused plugins
