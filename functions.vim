"----------
"Functions|
"----------
inoremap <F1> <ESC> 
nnoremap <F1> <ESC> 
vnoremap <F1> <ESC> 
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarOpenAutoClose<CR>
map <F4> :IndentGuidesToggle<CR>
"Remove whitespace
map <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>  
"Auto formatting (all languages)
map <F6> :Autoformat<CR><CR>
"map <F6> mzgg=G`z

