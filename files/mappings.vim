"---------
"Mappings|
"---------

let mapleader = ","

"Reload vim anywhere
"nnoremap <leader>r :source $MYVIMRC<CR>

"Old habits die hard
inoremap <silent> <ESC> <ESC>`^
inoremap jk <ESC>l

"Use semicolon in normal mode without shifting
nnoremap ; :

"Directional Keys
noremap j gj
noremap k gk

"Disable exit
map <C-z> <Nop>

"Remap start and end of line keys
nnoremap H ^
nnoremap L $

"Create blank line above and below without entering Insert mode
nnoremap t o<Esc>
nnoremap T O<Esc>

"Yank to end of line
nnoremap yL y$
"Yank to start of line
nnoremap yH y^

"Delete to end of line
nnoremap dL d$
"Delete to start of line
"nnoremap dH d^<Bar>x
nnoremap dH d^

"Switching between buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

"Hit space to turn off highlighted search results
nnoremap <silent> <Space> :nohlsearch<cr><ESC>

"Indentation shifting: prevents de-select after shift
vnoremap < <gv
vnoremap > >gv

"Save and switch between vertical/horizontal panes easier
nmap <C-J> :w<CR><C-W>j
nmap <C-K> :w<CR><C-W>k
nmap <C-H> :w<CR><C-W>h
nmap <C-L> :w<CR><C-W>l

"Select Block
nnoremap <leader>v V`}

"Resize split windows
nmap + <C-w>+
nmap - <C-w>-
nmap \| <C-w><
nmap \  <C-w>>

"Folding
"Prevent accidently deleting a fold
nmap zd <Nop>
nmap zE <Nop>

" Disabling man page on word hover
map <S-k> <Nop>

"Lazy/Typo
cabbrev q1 q!
cabbrev qw wq

"Add space without entering and exiting insert mode
nnoremap <leader><space> i<space><ESC>

"vim-commentary hack
nnoremap gcc gcc<Esc>

"Yank/Delete entire buffer
nnoremap yY :%y<c-r>=v:register<cr><cr>
nnoremap dD :%d<c-r>=v:register<cr><cr>
