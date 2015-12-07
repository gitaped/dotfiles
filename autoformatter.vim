"""""""""""""""
"Autoformatter|
"""""""""""""""

"Python
"au BufWrite *.py :Autoformat
let g:formatters_python = ['autopep8']
let g:formatdef_autopep8 = '"autopep8 -aa --max-line-length 120 -"'
let g:autoformat_verbosemode = 1

"TODO: Get js-beautify, html-beautify, css-beautify
"HTML
"let g:formatters_html = ['htmlbeautify']

"Javascript
"let g:formatters_javascript =['jsbeautify_js']

"CSS
"let g:formatters_css =['cssbeautify']
