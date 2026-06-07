# https://github.com/m-radzikowski/omf-plugin-asp
function asp -d 'Switches AWS profile' -a aws_profile region
  set available_profiles (__fish_print_aws_profiles)

  if test -z "$aws_profile"
    echo "Usage: asp <aws_profile> [region]"
    echo "Optional region flag to override default region"
    echo "Available profiles: $available_profiles"
    return 1
  end

  if not contains $aws_profile $available_profiles
    echo "Profile \"$aws_profile\" not found"
    echo "Available profiles: $available_profiles"
    return 1
  end

  set -Ueg __aar_role_arn
  set -Ueg AWS_ACCESS_KEY_ID
  set -Ueg AWS_SECRET_ACCESS_KEY
  set -Ueg AWS_SESSION_TOKEN

  set -Ux AWS_PROFILE "$aws_profile"
  set -Ux AWS_DEFAULT_PROFILE "$aws_profile"

  if test -n "$region"
    set -gx AWS_DEFAULT_REGION "$region"
  else
    set -eg AWS_DEFAULT_REGION
  end

  agp
end
