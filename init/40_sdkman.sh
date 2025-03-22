# macOS-only stuff. Abort if not macOS.
is_macos || return 1

# Install SDKMAN
if [[ ! -d "$HOME/.sdkman" ]]; then
  e_header "Installing SDKMAN"
  true | /bin/bash -c "$(curl -fsSL https://get.sdkman.io)"
  echo "DOTFILES NOTE: Added lines to .zshrc and .bash_profile can be deleted. Handled in existing file"
fi
