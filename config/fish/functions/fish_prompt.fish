function fish_prompt
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
