# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ..='../'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias rd=rmdir
alias d='dirs -v | head -10'

# List directory contents
alias ls='ls -F'
alias ll='ls -lh'
alias l='ls -Alh'

alias grep='grep --color=auto'


if [[ "$(which tree)" =~ tree$ ]]; then
  alias t='tree --dirsfirst -C'
  alias ta='tree --dirsfirst -Ca'
  alias td='tree --dirsfirst -Cd'
fi

# Aliasing eachdir like this allows you to use aliases/functions as commands.
alias eachdir=". eachdir"

# Create a new directory and enter it
function md() {
  mkdir -p "$@" && cd "$@"
}