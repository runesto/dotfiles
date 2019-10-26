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

# Exit if Mas is not installed.
[[ ! "$(type -P mas)" ]] && e_error "Mac apps need mas to install." && return 1

# Exit if not logged in to Mac Application Store
info=$(mas account)
[[ $info == *"Not signed in"* ]] && e_error "You're not logged in to Mac Application Store. Please log in via GUI." && return 1
e_header "Installing mac apps from account: ${info}"

# Mac Appstore apps
apps=(
  937984704 #Amphetamine
)

mac_application_store_install

# Misc cleanup!