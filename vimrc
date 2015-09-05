"-----------------
"Vim Configuartion|
"Ansley Peduru    |
"------------------

"-----------------
"General & Vundle|
"-----------------
set nocompatible    "no Vi compatibility mode 
filetype off		"required for Vundle 
set runtimepath+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin() 
Plugin 'gmarik/Vundle.vim'		 "Let Vundle manage Vundle
"Plugin 'Valloric/YouCompleteMe' "AutoCompletion FTW
Plugin 'scrooloose/nerdtree'	 "Filesystem tree
Plugin 'scrooloose/syntastic'	 "Syntax checking
Plugin 'tpope/vim-surround'      "Surroundings
Plugin 'bling/vim-airline'	     "Status/Tabline
Plugin 'ervandew/supertab'       "Tab Completion + cycle thru suggested options via YCM
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on
"Vundle Plugin HELP
" :PluginList		-lists configured plugins
" :PluginInstall	-installs plugins 
" "PluginUpdate		-update plugins
" :PluginSearch foo	-searches for foo
" :PluginClean		-confirms removal of unused plugins

"---------------
"User Interface|
"---------------
set number          "show line numbers
set ruler	        "show current row and line
set cursorline  	"highlight current line
set showcmd         "show last command
let &titlestring = expand('%:p') "show full directory of working file
set title	        "vim decides title of terminal
set showmode    	"show current mode (insert,visual, etc)
set laststatus=2    "display status line
set mouse=r			"Allow mouse usage

"--------------
"Spaces & Tabs|
"--------------
set tabstop=4	    "TAB MASTER RACE jk
set softtabstop=4
set shiftwidth=4
set smarttab        "use tabs at start of line, spaces eleswhere
set autoindent
set cindent	        "C style indenting

"-----
"Text|
"-----
set textwidth=80	"Wrap lines at column 80
set showmatch
set matchtime=1
set pastetoggle=<F3>

"-------
"Sounds|
"-------
set noerrorbells 

"---------------
"Colors & Fonts|
"---------------
syntax enable
set t_Co=256
set background=dark	"for the longevity of my eyes
colorscheme badwolf

"----------
"Searching|
"----------
set incsearch       "search as characters are entered
set hlsearch        "search for all matches
set ignorecase      "ignore case when searching
set smartcase       "for unexpected results

"---------
"Mappings|
"---------
let mapleader = "\<Space>"
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

"TODO: Add NERD Tree bindings, Arduino syntax
"TODO: Figure out how the fuck Airline works

"----------
"NERD Tree|
"----------
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"----------
"Syntastic|
"----------
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol =  "✖"
let g:syntastic_warning_symbol = "!"

"--------
"Airline|
"--------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#hunks#enabled=1
let g:airline_detect_paste=1 
let g:airline_theme='badwolf'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_symbols = {} 
let g:airline_symbols.paste = 'λ' "Cause lambdas are perfect for paste

function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode'])
	let g:airline_section_b = airline#section#create(['paste'])
	let g:airline_section_x = airline#section#create(['%P'])
	let g:airline_section_y = airline#section#create(['filetype'])
	let g:airline_section_z = airline#section#create_right(['branch','hunks'])
endfunction
autocmd VimEnter * call AirlineInit()
