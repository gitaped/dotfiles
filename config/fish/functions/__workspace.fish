function __workspace
    if test (uname -s) = "Darwin"
        set -g __workspace "macbook "
    else
        set -g __workspace "desktop "
    end

    echo -n -s (set_color normal)$__workspace
end
