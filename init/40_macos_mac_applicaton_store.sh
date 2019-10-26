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

function mac_application_store_check_account() {
  info=$(mas account)
  if [[ $info == *"Not signed in"* ]]; then
    e_error "You're not logged in to Mac Application Store. Please log in via GUI."
    return 1
  fi
  e_header "Installing mac apps from account: ${info}"
}

# Exit if Mas is not installed.
[[ ! "$(type -P mas)" ]] && e_error "Mac apps need mas to install." && return 1

# Mac Appstore apps
apps=(
  937984704 #Amphetamine
)

mac_application_store_check_account
mac_application_store_install

# Misc cleanup!