"----------
"Functions|
"----------
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
map <F4> :IndentGuidesToggle<CR>
"Remove whitespace
map <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>  
"Fix indentation
map <F6> mzgg=G`z
set pastetoggle=<F7>

