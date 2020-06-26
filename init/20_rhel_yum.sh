# RHEL-only stuff. Abort if not RHEL.
is_rhel || return 1

installed_yum_packages=()
yum_packages=()
yum_packages_to_install=()

# Misc.
yum_packages+=(
  atom
  ImageMagick
  redshift
  teams
  tree
  tuned-profiles-compat
)

# Install Yum packages.
installed_yum_packages="$(yum list installed -q | grep -v 'Installed Packages' | grep -v 'Loaded plugins' | cut -d ' ' -f 1 | cut -d '.' -f 1 | uniq)"
yum_packages_to_install=($(setdiff "${yum_packages[*]}" "$installed_yum_packages"))

if (( ${#yum_packages_to_install[@]} > 0 )); then
  e_header "Installing yum packages (${#yum_packages_to_install[@]})"
  for package in "${yum_packages_to_install[@]}"; do
    e_arrow "$package"
    sudo yum install -q -y "$package"
  done
fi
