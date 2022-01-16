# macOS-only stuff. Abort if not macOS.
is_macos || return 1

# Use config file via symlinks
ln -sf ~/.ssh/config_macos ~/.ssh/config

# Add all private keys in ~/.ssh/keys to Keychain
find -L ~/.ssh/keys -type f ! -name "*.pub" ! -name ".gitkeep" | xargs ssh-add --apple-use-keychain
