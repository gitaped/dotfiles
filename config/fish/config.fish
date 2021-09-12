set -U EDITOR vim

set -x -U DOTFILES ~/dotfiles
set -x -U WOTFILES ~/wotfiles

set -x -U GPG_TTY (tty)

function select -d "Read the elements of an array (1-indexed)"
    read --local --array --null arr
    echo $arr[$argv]
end

# shortcuts for colors
set -g cyan (set_color cyan)
set -g red (set_color red)
set -g kubeblue (set_color 326CE5)
set -g orange (set_color FFA500)
set -g green (set_color 008000)
set -g normal (set_color normal)
set -g grey (set_color 878787)
set -g lblue (set_color 00AAFF)

if test -e ~/.config/fish/work.fish
    source ~/.config/fish/work.fish
end

function fish_greeting
end

function ll
    ls -lh $argv
end

function l
    ls -G $argv
end

function gdf
    git diff $argv
end

function gst
    git status
end

function ...
    cd ../../
end

function ....
    cd ../../../
end

function .....
    cd ../../../../
end

function unset
  set --erase $argv
end

