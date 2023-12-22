function __fish_print_aws_profiles -d 'Prints a list of AWS profiles' -a select
  set -q AWS_CONFIG_FILE; or set AWS_CONFIG_FILE "$HOME/.aws/config"
  if ! test -e $AWS_CONFIG_FILE
      return 1
  end

  set -q AWS_SHARED_CREDENTIALS_FILE; or set AWS_SHARED_CREDENTIALS_FILE "$HOME/.aws/credentials"
  if ! test -e $AWS_CREDENTIALS_FILE
      return 1
  end

  set profiles (command sed -n 's/^\[profile \(.*\)\]/\1/p' "$AWS_CONFIG_FILE")
  string join \n $profiles
end

