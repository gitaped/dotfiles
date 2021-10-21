set -U EDITOR vim

set -x -U DOTFILES ~/dotfiles
set -x -U WOTFILES ~/wotfiles

set -x -U JOURNAL_PATH $HOME/journal

set -x -U GPG_TTY (tty)

# shortcuts for colors
set -g cyan (set_color cyan)
set -g red (set_color red)
set -g kubeblue (set_color 326CE5)
set -g orange (set_color FFA500)
set -g green (set_color 008000)
set -g normal (set_color normal)
set -g grey (set_color 878787)
set -g lblue (set_color 00AAFF)

set fish_prompt_pwd_dir_length 999

set -g __fish_git_prompt_showdirtystate 1
set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_color_branch FFA500 # orange
set -g __fish_git_prompt_char_dirtystate "✗"

if test -e ~/.config/fish/work.fish
    source ~/.config/fish/work.fish
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

