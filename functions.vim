"F2 to toggle NERD Tree view
nmap <F2> :NERDTreeToggle<CR>
"F3 to toggle Tagbar
nmap <F3> :TagbarToggle<CR> 
"F4 to toggle paste
set pastetoggle=<F4>
"F5 to remove trailling whitespace
nmap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
"F6 to fix indentation
nmap <F6> mzgg=G`z

