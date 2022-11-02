function fish_prompt
    echo (__kube_status) (__aws_status)
    echo (__workspace) (set_color cyan)(prompt_pwd) (set_color normal)(__fish_git_prompt)
    echo -e (set_color normal)'$ '
end
