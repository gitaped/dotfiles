if exists('b:did_ftplugin')
	finish
endif
let b:did_ftplugin = 1

autocmd Filetype javascript setlocal tabstop=2
autocmd Filetype javascript setlocal shiftwidth=2
autocmd Filetype javascript setlocal softtabstop=2
autocmd Filetype javascript setlocal textwidth=99
autocmd Filetype javascript setlocal smarttab
autocmd Filetype javascript setlocal expandtab
autocmd Filetype javascript setlocal autoindent


