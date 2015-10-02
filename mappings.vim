let mapleader = ","

"Remap ESC (enable CAPS LOCK as CTRL using gnome tweak tool)
"TODO: find better alternative to ESC
"
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

"Disable exit
map <C-z> <Nop>

"Remap start and end of line keys
"Reminder of the importance of ^ and $ as regex tokens
nnoremap H ^
nnoremap L $

"yank to end of line
nmap yL y$
"yank to start of line
nmap yH y^

"Switching between buffers 
nmap <C-n> :w<Bar>:bn <CR>
nmap <C-p> :w<Bar>:bp <CR>
nmap <C-d> :w<Bar>:bd <CR>

"F5 to remove trailling whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
"F6 to fix indentation
nnoremap <F6> mzgg=G`z


