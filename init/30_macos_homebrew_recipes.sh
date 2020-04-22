# macOS-only stuff. Abort if not macOS.
is_macos || return 1

# Install Homebrew recipes.
function brew_install_recipes() {
  recipes=($(setdiff "${recipes[*]}" "$(brew list)"))
  if (( ${#recipes[@]} > 0 )); then
    e_header "Installing Homebrew recipes: ${recipes[*]}"
    for recipe in "${recipes[@]}"; do
      brew install $recipe
    done
    brew cleanup
  fi
}

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Brew recipes need Homebrew to install." && return 1

# Homebrew recipes
recipes=(
  aws-iam-authenticator
  awscli
  bash-completion
  bat
  curl
  dos2unix
  git
  git-secret
  gnupg
  gnupg2
  gradle
  httpie
  jenv
  # kubernetes-cli # (part of Docker-cask)
  kubectx
  kubernetes-helm@2.11.0 #Ruter-version
  mas
  datawire/blackbird/telepresence
  tree
  watch
  wget
)

brew_install_recipes

# Misc cleanup!
