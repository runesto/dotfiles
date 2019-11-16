# Initializing jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Ruter-config
jenv add /Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home
jenv global openjdk-11.0.2