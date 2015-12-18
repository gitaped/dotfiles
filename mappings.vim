"---------
"Mappings|
"---------

let mapleader = ","

"Remap ESC (enable CAPS LOCK as CTRL using gnome tweak tool)
"TODO: find better alternative to ESC

"Old habits die hard
inoremap <silent> <ESC> <ESC>`^
inoremap jk <ESC>

"Arrow keys r 4 plebs
nnoremap <up> :echoe "use k"<cr>
nnoremap <down> :echoe "use j"<cr>
nnoremap <left> :echoe "use h"<cr>
nnoremap <right> :echoe "use l"<cr>

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
nmap yL y$
"Yank to start of line
nmap yH y^

"Delete to end of line
nnoremap dL d$
"Delete to start of line
nnoremap dH d^<Bar>x 

"Save when switching between buffers 
nnoremap bn :w<Bar>:bn<CR>
nnoremap bp :w<Bar>:bp<CR>
nnoremap bd :w<Bar>:bd<CR>

let CursorColumnI = 0 "the cursor column position in INSERT
autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif"

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
