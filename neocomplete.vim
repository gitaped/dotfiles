"------------
"Neocomplete|
"------------

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 0
let g:neocomplete#enable_underbar_completion = 1
let g:neocomplete#sources#syntax#min_keyword_length = 0
let g:neocomplete#enable_fuzzy_completion = 1
let g:neocomplete#enable_refresh_always = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#max_list = 10

autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

inoremap <expr> <C-g> neocomplete#undo_completion()
inoremap <expr> <C-l> neocomplete#complete_common_string()
inoremap <expr> <C-h> neocomplete#smart_close_popup()."\<C-h>"

"Cycle through suggestions with tab
inoremap <expr> <TAB> pumvisible() ? "\<C-n>": "\<TAB>"

"On Enter (carriage return) autocomplete highlighted suggestion
inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>" 


"Python
autocmd FileType python setlocal omnifunc=jedi#completions
if !exists('g:neocomplete#sources#omni#functions')
	let g:neocomplete#sources#omni#functions = {}
endif
let g:neocomplete#sources#omni#functions.python = 'jedi#completions'

if !exists('g:neocomplete#force_omni_input_patterns')
	let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
	

let g:echodoc_enable_at_startup = 1
