# Add all private keys in ~/.ssh/ to Keychain
#find -L ~/.ssh -type f ! -name "*.pub" ! -name "config" ! -name "known_hosts" | xargs ssh-add -K
find ~/.ssh -type f ! -name "*.pub" ! -name "config" ! -name "known_hosts" | xargs ssh-add -K