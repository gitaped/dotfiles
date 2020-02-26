set -U EDITOR vim

set -x -U DOTFILES ~/dotfiles

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

function fish_prompt
    # define git functions if not already defined
    if not set -q -g __fish_git_functions_defined
        set -g __fish_git_functions_defined
        function _git_branch_name
            echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
        end
        function _is_git_dirty
            echo (git status -s --ignore-submodules=dirty ^/dev/null)
        end
    end

    # define hostname if not already defined
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    # set path
    set -l cwd $cyan(prompt_pwd)

    # if git branch
    if [ (_git_branch_name)  ]
        set git_info $orange"("(_git_branch_name)")"
        # if dirty
        if [ (_is_git_dirty)  ]
            set -l dirty "$red ✗"
            set git_info "$git_info$dirty "
        else
            set git_info "$git_info "
        end
    end

    if not functions --query "$__set_prompt"
        __set_prompt
    end

    echo -s "$cwd $git_info"
    echo -e $normal'$ '
end

function ll
    ls -lh $argv
end

function l
    ls -G $argv
end

function dot
    clear; cd $DOTFILES; ls
end

function down
    clear; cd ~/Downloads; ls
end

function src
    clear; cd ~/src; ls
end

function gdf
    git diff $argv
end

function gst
    git status
end

function gnb -d "Quickly create a new git branch tracking master"
    git checkout --track -b "ap/$argv[1]" origin/master
end

function gap -d "List all my git branches"
    git branch --list "ap/*"
end

function gdlb -d "Delete local branches already mereged to master"
    git branch --merged master --no-color | grep -v '^[*]*master$' | xargs git branch -d
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

