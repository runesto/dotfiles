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
  bash-completion@2
  coreutils
  curl
  findutils
  git
  htop
  httpie
  jq
  tmux
  maven
  media-info
  moreutils
  nvm
  openshift-cli
  stern
  tree
  vim
  watch
  wget
  # My additions
  docker
  podman
)

brew_install_recipes

# Homebrew casks
casks=(
  cakebrew
  iterm2
  jetbrains-toolbox
  mattermost
  temurin8
  temurin11
  temurin17
  temurin
  # My additions
  alfred
  flux
  rectangle
  spotify)

brew_install_casks

# Misc cleanup!
