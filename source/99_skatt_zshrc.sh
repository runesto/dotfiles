if [[ -d "$HOME/src/skatt" ]]; then
  for file in ~/.zshrc.d/*.zsh; do
      source "$file"
  done
  unset file
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
