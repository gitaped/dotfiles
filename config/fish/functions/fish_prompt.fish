function fish_prompt
    set kube_prompt (__kube_prompt)
    set aws_prompt (__aws_prompt)

    if test -n "$kube_prompt"
        echo -n $kube_prompt
    end
    if test -n "$aws_prompt"
        echo -n " "
        echo -n $aws_prompt
    end
    if test -n "$kube_prompt" -o -n "$aws_prompt"
        echo
    end
    echo (__workspace) (set_color cyan)(prompt_pwd) (set_color normal)(__fish_git_prompt)
    echo -e (set_color normal)'$ '
end
