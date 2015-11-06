if exists('b:did_ftplugin')
	finish
endif
let b:did_ftplugin = 1

autocmd Filetype python setlocal tabstop=4
autocmd Filetype python setlocal shiftwidth=4
autocmd Filetype python setlocal softtabstop=4
autocmd Filetype python setlocal textwidth=99
autocmd Filetype python setlocal smarttab
autocmd Filetype python setlocal expandtab
autocmd Filetype python setlocal autoindent
autocmd Filetype python setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

autocmd BufWritePre *.py normal m`:%s/\s\+$//e``

