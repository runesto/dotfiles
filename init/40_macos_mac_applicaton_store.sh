# macOS-only stuff. Abort if not macOS.
is_macos || return 1

# Install Mac Application Store apps.
function mac_application_store_install() {
  apps=($(setdiff "${apps[*]}" "$(mas list)"))
  if (( ${#apps[@]} > 0 )); then
    e_header "Installing Mac apps : ${apps[*]}"
    for app in "${apps[@]}"; do
      mas install $app
    done
  fi
}

# Exit if Homebrew is not installed.
[[ ! "$(type -P mas)" ]] && e_error "Mac apps need mas to install." && return 1

# Homebrew apps
apps=(
  937984704 Amphetamine
)

mac_application_store_install

# Misc cleanup!