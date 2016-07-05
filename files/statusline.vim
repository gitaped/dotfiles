set statusline=         "reset
set statusline+=%#todo# "set color
set statusline+=[       "open bracket char
set statusline+=%n      "buffer number
set statusline+=%M      "modifiable/modified flag
set statusline+=%R      "Readonly flag
set statusline+=%W      "Preview window flag
set statusline+=]%*     "close bracket & reset color
set statusline+=%<      "cut from here if line is too long
set statusline+=./%f    "relative path of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'wtf-enc'}\| "file encoding
set statusline+=%{&ff}\| "file format
set statusline+=%{strlen(&ft)?&ft:'zomg'}] "file type
set statusline+=%=      "left/right separator
set statusline+=%{fugitive#statusline()}\  "git branch
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ (%P) "escaped space, percent through file
