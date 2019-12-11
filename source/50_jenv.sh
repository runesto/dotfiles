# Initializing jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Ruter-config
function jenv_is_configured_correctly() {
	[[ $(jenv global) == "11.0" ]] && [[ $(basename $JAVA_HOME) == "11.0" ]] && return 0
	return 1
}

if ! jenv_is_configured_correctly;then
	e_header "Configuring jenv"
	jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
	jenv enable-plugin export
	jenv global 11.0
fi
