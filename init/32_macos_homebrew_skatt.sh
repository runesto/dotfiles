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
  az
  azure/kubelogin/kubelogin
  bash-completion@2
  bruno
  cmctl
  coreutils
  curl
  findutils
  fluxcd/tap/flux
  gh
  git
  helm
  htop
  httpie
  istioctl
  jq
  k9s
  kubeconform
  kubectl
  kubectx
  kubeseal
  kustomize
  maven
  media-info
  moreutils
  nvm
  openshift-cli
  pgadmin4
  stern
  tektoncd-cli
  tree
  tmux
  unzip
  vim
  watch
  wget
  yq
  # My additions
  docker
  podman
  podman-compose
)

brew_install_recipes

# Homebrew casks
casks=(
  # My additions
  alfred
  flux
  spotify)

brew_install_casks

# Misc cleanup!
