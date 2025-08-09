set -x -U EDITOR nvim
set -x -U KUBE_EDITOR nvim

set -x -U DOTFILES $HOME/dotfiles
set -x -U WOTFILES $HOME/wotfiles

set -x -U JOURNAL_PATH $HOME/journal

set -x -U GPG_TTY (tty)

set -x -U RIPGREP_CONFIG_PATH $HOME/.config/ripgrep/ripgreprc

set -x -U XDG_CONFIG_HOME $HOME/.config
set -x -U XDG_DATA_HOME $HOME/.local/share

set -x -U PYENV_ROOT $HOME/.pyenv
test -d $PYENV_ROOT/bin; and set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

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

if which -s brew
    if test -d (brew --prefix)/bin
        fish_add_path (brew --prefix)/bin
    end
end

if test -d $HOME/.local/bin
    fish_add_path $HOME/.local/bin
end

if test -d $HOME/.cargo/bin
    fish_add_path $HOME/.cargo/bin
end

if test -d $HOME/go/bin
    fish_add_path $HOME/go/bin
end

if test -e $HOME/.config/fish/work.fish
    source $HOME/.config/fish/work.fish
end

if which -s brew
    if test -e (brew --prefix)/share/autojump/autojump.fish 
        source (brew --prefix)/share/autojump/autojump.fish
    end
end

if which -s kubectl
    kubectl completion fish | source
end

if which -s pyenv
    pyenv init - fish | source
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

alias l="ls"
alias k="kubectl"
alias srcfish="source $HOME/.config/fish/config.fish"
