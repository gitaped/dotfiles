function __kube_prompt
    if test -z (which kubectl); or not test -e "$HOME/.kube/config"
        return
    end
    set __kube_config "$HOME/.kube/config"

    set kubeblue (set_color 326CE5)
    set lblue (set_color 00AAFF)
    set grey (set_color 878787)
    set normal (set_color normal)

    set __on $grey" on "
    set __in $grey"in "
    set __sep $normal"/"
    set __space " "
    set __kube $normal"⎈ "

    # Check if the timestamp has been created otherwise compare it to the
    # current config timestamp; Thus only update the prompt if the namespace or
    # context have changed
    if test -z $__kube_timestamp; or test (stat -f '%m' $__kube_config) -gt $__kube_timestamp
        set -g __kube_timestamp (stat -f '%m' $__kube_config)
        set -g __context $kubeblue(kubectl config current-context 2>/dev/null)
        set -g __namespace $lblue(kubectl config view --minify -o "jsonpath={..namespace}" 2>/dev/null)
        [ -z $__namespace ]; and set -g __namespace $lblue'default'
    end

    set -gx __kube_prompt $__kube$__context$__sep$__namespace
    echo -n $__kube_prompt
end
