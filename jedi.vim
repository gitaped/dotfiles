""""""
"Jedi|
""""""

let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#completions_enabled = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 1
let g:jedi#show_call_signatures = 0
let g:jedi#goto_definitions_command='<Leader>d'
let g:jedi#goto_assignments_command='<Leader>a'
let g:jedi#rename_command='<Leader>r'
let g:jedi#documentation_command = "K"
if has('python3')
	let g:jedi#force_py_version = 3
endif

