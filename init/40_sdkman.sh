# macOS-only stuff. Abort if not macOS.
is_macos || return 1

# Install SDKMAN
if [[ ! -d "$HOME/.sdk" ]]; then
  e_header "Installing SDKMAN"
  true | /bin/bash -c "$(curl -fsSL https://get.sdkman.io)"
fi