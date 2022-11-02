function __aws_status

    if test -z $AWS_PROFILE
        return
    end

    set -g blue (set_color 146eb4)
    set -g orange (set_color FF9900)
    set -g normal (set_color normal)

    set -g __aws $blue"aws"
    set -g __sep $normal":"
    set -g __profile $orange(echo $AWS_PROFILE)

    echo -n -s $__aws$__sep$__profile
end
