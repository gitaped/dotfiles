"----------
"NERD Tree|
"----------
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.git$']
let NERDTreeQuitOnOpen = 1
let NERDTreeMapUpdir = '..'
