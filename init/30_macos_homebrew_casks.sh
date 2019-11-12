# macOS-only stuff. Abort if not macOS.
is_macos || return 1

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Brew casks need Homebrew to install." && return 1


# Hack to show the first-run brew-cask password prompt immediately.
brew cask info this-is-somewhat-annoying 2>/dev/null

# Homebrew casks
casks=(
  # Applications
  1password
  alfred
  bartender
  docker
  disk-inventory-x
  dropbox
  evernote
  firefox
  flux
  freemind
  google-backup-and-sync
  google-chrome
  intellij-idea
  iterm2
  mailplane
  macpass
  microsoft-office
  postman
  remember-the-milk
  rescuetime
  skype
  slack
  snagit
  spotify
  sublime-text
  the-unarchiver
  vlc
)

# Install Homebrew casks.
casks=($(setdiff "${casks[*]}" "$(brew cask list 2>/dev/null)"))
if (( ${#casks[@]} > 0 )); then
  e_header "Installing Homebrew casks: ${casks[*]}"
  for cask in "${casks[@]}"; do
    brew cask install $cask
  done
  brew cleanup
fi
