function fish_prompt
    echo -s (__workspace) (__kube_status)
    echo -s (set_color cyan)(prompt_pwd) (set_color normal)(__fish_git_prompt)
    echo -e (set_color normal)'$ '
end
