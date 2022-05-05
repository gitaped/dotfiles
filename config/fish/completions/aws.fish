function __fish_complete_aws
    env COMP_LINE=(commandline -pc) aws_completer | tr -d ' '
end

if type -q aws
    complete --command aws --no-files --arguments "(__fish_complete_aws)"
end

