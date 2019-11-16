# Initializing jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Ruter-config
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
jenv global 11.0