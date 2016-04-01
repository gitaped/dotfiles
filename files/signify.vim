"--------
"Signify|
"--------

let g:signify_vcs_list = [ 'git' ]
let g:signify_sign_show_count = 0
let g:signify_update_on_bufenter = 0
let g:signify_update_on_focusgained = 0

highlight SignifySignAdd    cterm=bold ctermfg=green
highlight SignifySignDelete cterm=bold ctermfg=red
highlight SignifySignChange cterm=bold ctermfg=blue

highlight SignifySignAdd    gui=bold  guifg=green
highlight SignifySignDelete gui=bold  guifg=red
highlight SignifySignChange gui=bold  guifg=darkorange

