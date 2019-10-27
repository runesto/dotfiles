# Exit if Homebrew is not installed
[[ ! "$(type -P brew)" ]] && e_error "Bash_completion expects Homebrew to be installed." && return 1

# Source bash_completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"