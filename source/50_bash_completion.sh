# Exit if Homebrew is not installed
[[ ! "$(type -P brew)" ]] && e_error "Bash_completion expects Homebrew to be installed." && return 1

# Link Docker completion (requires Docker installed)
ln -sf /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion /usr/local/etc/bash_completion.d/docker
ln -sf /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion /usr/local/etc/bash_completion.d/docker-compose


# Source bash_completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"