# macOS-only stuff. Abort if not macOS.
is_macos || return 1

# APPLE, Y U PUT /usr/bin B4 /usr/local/bin?!
# PATH="/usr/local/bin:$(path_remove /usr/local/bin)"
# export PATH

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Start ScreenSaver. This will lock the screen if locking is enabled.
alias ss="open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

# Speeds up time machine backups (by using more CPU)
alias speedup-tm="sudo sysctl debug.lowpri_throttle_enabled=0"

# Resets time machine backups priority
alias slowdown-tm="sudo sysctl debug.lowpri_throttle_enabled=1"