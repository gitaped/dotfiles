"""""""""""""""
"Autoformatter|
"""""""""""""""

"Python
let g:formatters_python = ['autopep8']
let g:formatdef_autopep8 = '"autopep8 -aa --max-line-length 80 -"'
let g:autoformat_verbosemode = 1

"C/C++
let g:formatters_cpp = ['astyle']
let g:formatdef_astyle = '"astyle --mode=c --style=google --indent=tab=4"'

"TODO: Shell, Vim, Markdown, TeX
