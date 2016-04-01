"--------
"Airline|
"--------
"NOTE: Set terminal font to Ubuntu Mono derivative Powerline

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabed = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#hunks#enabled = 1
"let g:airline#extensions#branch#enabled = 1

let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'

let g:airline_detect_paste = 1
let g:airline_theme='hybridline'

let g:airline_symbols={}
let g:airline_symbols.paste = 'λ'

"let g:airline_section_c = '%{getcwd()}/%t'
