"---------------
"Plugin Manager|
"---------------

set nocompatible    "no Vi compatibility mode
filetype indent on
call plug#begin('~/dotfiles/vim/plugged')

"Autocompletion
Plug 'Valloric/YouCompleteMe'
", { 'do':'./install.py --clang-completer' }

"Syntax checking
Plug 'scrooloose/syntastic'

"Orgasmic commenting
"Plug 'scrooloose/nerdcommenter'
"Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-commentary'

"Filesystem tree
Plug 'scrooloose/nerdtree'

"Display diff in gutter	(all VCS)
"Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

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

"Controls and updates tags for source code
"Plug 'xolox/vim-easytags'

"Miscellaneous auto-load vim scripts ~> required for vim-easytags
"Plug 'xolox/vim-misc'

"Vim git wrapper
"Plug 'tpope/vim-fugitive'


"Displays tags in a window
"Plug 'majutsushi/tagbar'

"Select larger regions of text in visual mode
"Plug 'terryma/vim-expand-region'

"Maintains history of previous yanks/deletions
"Plug 'vim-scripts/YankRing.vim'

"Statusline
"Plug 'taohex/lightline-buffer'
"Plug 'maciakl/vim-neatstatus'


call plug#end()
"-----------
" Plug HELP|
"-----------
" :PlugStatus		-lists configured plugins
" :PlugUpgrade		-upgrade Vim-plug itself
" :PlugInstall		-installs plugins
" :PlugUpdate		-update plugins
" :PlugClean		-confirms removal of unused plugins
