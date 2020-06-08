# Ubuntu-only stuff. Abort if not Ubuntu.
is_rhel || return 1

# Misc.
yum_packages+=(
  atom
  blueberry
  ImageMagick
  redshift
  teams
)

if (( ${#yum_packages[@]} > 0 )); then
  e_header "Installing yum packages (${#yum_packages[@]})"
  for package in "${yum_packages[@]}"; do
    e_arrow "$package"
    sudo yum install -q "$package"
  done
fi
