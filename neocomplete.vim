"------------
"Neocomplete|
"------------

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1
let g:neocomplete#enable_fuzzy_completion = 0


autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

inoremap <expr> <C-g> neocomplete#undo_completion()
inoremap <expr> <C-l> neocomplete#complete_common_string()
inoremap <expr> <C-h> neocomplete#smart_close_popup()."\<C-h>"

"Cycle through suggestions with tab
inoremap <expr> <TAB> pumvisible() ? "\<C-n>": "\<TAB>"

"On Enter (carriage return) autocomplete highlighted suggestion
inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>" 



