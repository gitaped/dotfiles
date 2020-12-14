function fish_prompt
    # define git functions if not already defined
    if not set -q -g __fish_git_functions_defined
        set -g __fish_git_functions_defined
        function _git_branch_name
            echo (git rev-parse --git-dir >/dev/null 2>&1 && git rev-parse --symbolic-full-name --abbrev-ref HEAD)
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

    set _this_machine (uname -s)
    if test "$_this_machine" = "Darwin"
        set -g _workspace (set_color normal)"macbook "
    else
        set -g _workspace (set_color normal)"desktop "
    end

    echo -s $_workspace (__kube_status)
    echo -s "$cwd $git_info"
    echo -e $normal'$ '
end
