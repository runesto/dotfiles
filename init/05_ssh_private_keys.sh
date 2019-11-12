# Add all private keys in ~/.ssh/ to Keychain
find -L ~/.ssh/keys -type f ! -name "*.pub" | xargs ssh-add -K
