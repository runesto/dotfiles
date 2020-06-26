# RHEL-only stuff. Abort if not RHEL.
is_rhel || return 1

# Initialize power profile
tuned-adm profile desktop-powersave
