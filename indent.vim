"-------
"Indent|
"-------
let g:indent_guides_auto_colors = 0
let g:indent_guides_color_change_percent = 10
let g:indent_guides_guide_size = 1
let g:indent_guides_default_mapping = 0

autocmd VimEnter,Colorscheme  * :hi IndentGuidesOdd   guibg=darkgrey ctermbg=235
autocmd VimEnter,Colorscheme  * :hi IndentGuidesEven  guibg=darkgrey ctermbg=236
