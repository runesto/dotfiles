# macOS-only stuff. Abort if not macOS.
is_macos || return 1

# Add all private keys in ~/.ssh/keys to Keychain
find -L ~/.ssh/keys -type f ! -name "*.pub" ! -name ".gitkeep" | xargs ssh-add -K
