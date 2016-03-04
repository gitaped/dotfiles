"""""""""""""""
"Autoformatter|
"""""""""""""""

"Python
"au BufWrite *.py :Autoformat
let g:formatters_python = ['autopep8']
let g:formatdef_autopep8 = '"autopep8 -aa --max-line-length 80 -"'
let g:autoformat_verbosemode = 1
