# RHEL-only stuff. Abort if not RHEL.
is_rhel || return 1

# Install atom packages
atom_packages=()
atom_packages_to_install=()
installed_atom_packages=()

atom_packages+=(
  autosave-onchange
)

installed_atom_packages="$(apm list -b | cut -d '@' -f 1)"
atom_packages_to_install=($(setdiff "${atom_packages[*]}" "$installed_atom_packages"))

if (( ${#atom_packages_to_install[@]} > 0 )); then
  e_header "Installing atom packages (${#atom_packages_to_install[@]})"
  for package in "${atom_packages_to_install[@]}"; do
    e_arrow "$package"
    apm install "$package"
  done
fi
