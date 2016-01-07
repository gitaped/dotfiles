if exists('b:did_ftplugin')
finish
endif
let b:did_ftplugin = 1

autocmd Filetype html setlocal tabstop=2
autocmd Filetype html setlocal shiftwidth=2
autocmd Filetype html setlocal softtabstop=2
autocmd Filetype html setlocal textwidth=80
autocmd Filetype html setlocal smarttab
autocmd Filetype html setlocal expandtab
autocmd Filetype html setlocal autoindent

autocmd Filetype html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"

