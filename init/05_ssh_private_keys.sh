# Add all private keys in ~/.ssh/ to Keychain
find ~/.ssh -type f ! -name "*.pub" ! -name "config" ! -name "known_hosts" | xargs ssh-add -K
