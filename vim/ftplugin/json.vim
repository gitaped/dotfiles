if exists('b:did_ftplugin')
	finish
endif
let b:did_ftplugin = 1

autocmd Filetype json setlocal tabstop=2
autocmd Filetype json setlocal shiftwidth=2
autocmd Filetype json setlocal autoindent
