let mapleader = ","

"Remap ESC (enable CAPS LOCK as CTRL using gnome tweak tool)
"TODO: find better alternative to ESC
"
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

"Save when switching between buffers 
nmap <C-n> :w<Bar>:bn <CR>
nmap <C-p> :w<Bar>:bp <CR>
nmap <C-d> :w<Bar>:bd <CR>

let CursorColumnI = 0 "the cursor column position in INSERT
autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif"

"Hit space to turn off highlighted search results
nnoremap <silent> <Space> :nohlsearch<cr><ESC>

"Indentation shifting: prevents de-select after shift
vnoremap < <gv
vnoremap > >gv

"Switch between vertical/horizontal panes easier
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

"Delete mid way to end of line 
"May also use <Shift> + d
nnoremap dL d$
"Delete mid way to start of line 
nnoremap dH d^<Bar>x 

"Typos
nmap :qw<CR> :wq<CR>

"Select Block
nnoremap <leader>v V`}
