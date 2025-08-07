function __kube_status
    if test -z (which kubectl); or not test -e "$HOME/.kube/config"
        return
    end
    set -g __kube_config "$HOME/.kube/config"

    set -g kubeblue (set_color 326CE5)
    set -g lblue (set_color 00AAFF)
    set -g grey (set_color 878787)
    set -g normal (set_color normal)

    set -g __on $grey" on "
    set -g __in $grey"in "
    set -g __sep $normal":"
    set -g __space " "
    set -g __kube $normal"⎈ "

    # Check if the timestamp has been created otherwise compare it to the
    # current config timestamp; Thus only update the prompt if the namespace or
    # context have changed
    if test -z $__kube_timestamp; or test (stat -f '%m' $__kube_config) -gt $__kube_timestamp
        set -g __kube_timestamp (stat -f '%m' $__kube_config)
        set -g __context $kubeblue(kubectl config current-context 2>/dev/null)
        set -g __namespace $lblue(kubectl config view --minify -o "jsonpath={..namespace}" 2>/dev/null)
        [ -z $__namespace ]; and set -g __namespace $lblue'default'
    end

    echo -n -s $__kube$__context$__sep$__namespace 
end
