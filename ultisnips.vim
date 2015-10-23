"----------
"UltiSnips|
"----------
let g:UltiSnipsSnippetDir="$HOME/dotfiles/vim/UltiSnips"
let g:UltiSnipsJumpForwardTrigger="<C-k>"
let g:UltiSnipsJumpBackwardTrigger="<C-j>"

let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
	let snippet = UltiSnips#ExpandSnippetOrJump()
	if g:ulti_expand_or_jump_res > 0
		return snippet
	else
		return "\<CR>"
	endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
