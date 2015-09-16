"Airline|
"--------
"Important: Set terminal font to Ubuntu Mono derivative Powerline
"TODO: Investigate lightline as statusline alternative
"https://github.com/itchyny/lightline.vim
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enable=1
let g:airline_detect_paste=1
let g:airline_theme='badwolf'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols={}
let g:airline_symbols.paste = 'λ' "Cause lambdas are perfect for paste

function! AirlineInit()
	let g:airline_section_a = airline#section#create_left(['mode'])
	let g:airline_section_b = airline#section#create_left(['paste'])
	let g:airline_section_c = airline#section#create(['branch','hunks'])
	let g:airline_section_x = airline#section#create(['%t'])
	let g:airline_section_y = airline#section#create(['%l'])
	let g:airline_section_z = airline#section#create(['%c'])
endfunction
autocmd VimEnter * call AirlineInit()

