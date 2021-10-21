function fish_prompt
    if test (uname -s) = "Darwin"
        set -g _workspace (set_color normal)"macbook "
    else
        set -g _workspace (set_color normal)"desktop "
    end

    echo -s $_workspace (__kube_status)
    echo -s $cyan(prompt_pwd) $normal(__fish_git_prompt)
    echo -e $normal'$ '
end
