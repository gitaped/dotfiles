function fish_prompt
    # define hostname if not already defined
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    set _this_machine (uname -s)
    if test "$_this_machine" = "Darwin"
        set -g _workspace (set_color normal)"macbook "
    else
        set -g _workspace (set_color normal)"desktop "
    end

    echo -s $_workspace (__kube_status)
    echo -s $cyan(prompt_pwd) $normal(__fish_git_prompt)
    echo -e $normal'$ '
end
