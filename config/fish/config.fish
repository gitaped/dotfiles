set -U EDITOR vim

set -x -U DOTFILES $HOME/dotfiles
set -x -U WOTFILES $HOME/wotfiles

set -x -U JOURNAL_PATH $HOME/journal

set -x -U GPG_TTY (tty)

set -x -U RIPGREP_CONFIG_PATH $HOME/.config/ripgrep/ripgreprc

set -x -U XDG_CONFIG_HOME $HOME/.config

# shortcuts for custom colors
# kubeblue 326CE5
# orange FFA500
# green 008000
# grey 878787
# lblue 00AAFF

set -g __fish_git_prompt_showdirtystate 1
set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_color_branch FFA500 # orange
set -g __fish_git_prompt_char_dirtystate "✗"

fish_add_path $HOME/.local/bin

if test -e $HOME/.config/fish/work.fish
    source $HOME/.config/fish/work.fish
end

if test -e /usr/local/share/autojump/autojump.fish 
    source /usr/local/share/autojump/autojump.fish
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

alias k="kubectl"
alias srcfish="source $HOME/.config/fish/config.fish"
