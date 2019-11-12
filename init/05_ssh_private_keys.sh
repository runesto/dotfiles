# Add all private keys in ~/.ssh/keys to Keychain
find -L ~/.ssh/keys -type f ! -name "*.pub" ! -name ".gitkeep" | xargs ssh-add -K
