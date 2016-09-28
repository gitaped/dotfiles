"---------
"Mappings|
"---------

let mapleader = ","

"Reload vim anywhere
"nnoremap <leader>r :source $MYVIMRC<CR>

"Old habits die hard
inoremap <silent> <ESC> <ESC>`^
inoremap jk <ESC>l

"Function keys
map <F3> :Autoformat<CR><CR>
map <F4> :StripWhitespace<CR>
map <F5> :buffers<CR>:buffer<Space>

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
nmap <leader>o o<Esc>
nmap <leader>O O<Esc>

"Yank to end of line
nmap yL y$
"Yank to start of line
nmap yH y^

"Delete to end of line
nmap dL d$
"Delete to start of line
"nnoremap dH d^<Bar>x
nmap dH d^

"Switching between buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

"Hit space to turn off highlighted search results
nnoremap <silent> <Space> :nohlsearch<CR><ESC>

"Clear the screen and redraw
nnoremap <silent> <CR> :redraw!<CR><ESC>

"Indentation shifting: prevents de-select after shift
vnoremap < <gv
vnoremap > >gv

"Sane pane switching
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

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
" nnoremap <leader><space> a<space><ESC>

"vim-commentary hack
nnoremap gcc gcc<Esc><Esc>

"Yank/Delete entire buffer
nnoremap yY :%y<c-r>=v:register<cr><cr>
nnoremap dD :%d<c-r>=v:register<cr><cr>

" Search word under cursor
map <C-d> :Ack! <C-r><C-w><space>
" General search
map <C-f> :Ack!<space>
