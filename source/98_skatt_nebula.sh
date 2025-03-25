if [[ -d "$HOME/src/skatt" && ! -d "$HOME/src/skatt/neb/nebula-tools" ]]; then
  e_header "Installing Nebula tools"
  md ${HOME}/src/skatt/neb/
  git clone https://git.aurora.skead.no/scm/neb/nebula-tools.git
  cd
fi

export PATH=$PATH:${HOME}/src/skatt/neb/nebula-tools/scripts