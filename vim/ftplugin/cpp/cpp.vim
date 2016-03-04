if exists('b:did_ftplugin')
	finish
endif
let b:did_ftplugin = 1

autocmd Filetype cpp setlocal tabstop=4
autocmd Filetype cpp setlocal shiftwidth=4
autocmd Filetype cpp setlocal softtabstop=4
autocmd Filetype cpp setlocal textwidth=99
autocmd Filetype cpp setlocal smarttab
autocmd Filetype cpp setlocal expandtab
autocmd Filetype cpp setlocal autoindent

autocmd Filetype cpp let b:delimitMate_matchpairs = "(:),[:],{:}"

