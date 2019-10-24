if [[ ! "$(type -P teamocil)" ]]; then
  echo "Installing teamocil"

  if is_macos; then
    gem install teamocil
  else
    sudo gem install teamocil
  fi
fi
