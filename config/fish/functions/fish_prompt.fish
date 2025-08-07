function fish_prompt
    set -gx kube_prompt (__kube_status)
    set -gx aws_prompt (__aws_status)
    if test -n $kube_prompt; or test -n $aws_prompt
        if test -n $kube_prompt
            echo -n $kube_prompt
        end
        if test -n $aws_prompt
            echo -n " "
            echo -n $aws_prompt
        end
        echo
    end
    echo (__workspace) (set_color cyan)(prompt_pwd) (set_color normal)(__fish_git_prompt)
    echo -e (set_color normal)'$ '
end
