# macOS-only stuff. Abort if not macOS.
is_macos || return 1

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Brew recipes need Homebrew to install." && return 1

# Install Homebrew recipes.
function brew_install_recipes() {
  recipes=($(setdiff "${recipes[*]}" "$(brew list --formulae)"))
  if (( ${#recipes[@]} > 0 )); then
    e_header "Installing Homebrew recipes/casks: ${recipes[*]}"
    for recipe in "${recipes[@]}"; do
      brew install $recipe
    done
    brew cleanup
  fi
}

# Install Homebrew casks.
function brew_install_casks() {
  casks=($(setdiff "${casks[*]}" "$(brew list --casks)"))
  if (( ${#casks[@]} > 0 )); then
    e_header "Installing Homebrew casks: ${casks[*]}"
    for cask in "${casks[@]}"; do
      brew install --cask $cask
    done
    brew cleanup
  fi
}

# Homebrew recipes
recipes=(
  gnu-sed
  gradle
  httpie
  mas
)

brew_install_recipes

# Homebrew casks
casks=(
  # Applications
  1password
  alfred
  asana
  docker # Docker Desktop. Can't be used if needing Oracle
  disk-inventory-x
  dropbox
  flux
  freeplane
  kiwi-for-gmail
  mailplane
  microsoft-office
  proxifier # TietoEvry
  remember-the-milk
  slack
  snagit
  spotify
  sublime-text
  temurin # Java17
  temurin11 # Java11
  the-unarchiver
  vlc
  zoom
)

brew_install_casks

# Misc cleanup!
