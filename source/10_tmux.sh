# Start new tmux session or reattach to an existing session, but only if not
# already inside a tmux session.
function tm() {
  local is_source=; [[ "$1" == "SOURCE" ]] && is_source=1 && shift
  local tmux_no_logout=~/.dotfiles/caches/tmux-no-logout
  if [[ ! "$TMUX" ]]; then
    # Clean up any orphaned "no logout" file.
    [[ -e $tmux_no_logout ]] && rm $tmux_no_logout
    # Actually start tmux.
    tmux ls >/dev/null 2>&1 && tmux attach "$@" || tmux "$@"
    # If "no logout" doesn't exist, exit.
    [[ -e $tmux_no_logout ]] && rm $tmux_no_logout || exit
  elif [[ ! "$is_source" ]]; then
    echo "Already in a tmux session!"
  fi
}

function toc() {
  tmux new-session -d "teamocil $1" \; attach
}

# Open editor and shell in new window using main-vertical layout.
# Usage: qq [num-panes] [working-directory] [...other-args]
function qq() {
  local panes=1; [[ "$1" =~ ^[0-9]+$ ]] && panes=$1 && shift
  local dir="$PWD"; [[ -d "$1" ]] && dir="$(cd "$1" && pwd)" && shift
  local win=$(tmux new-window -P -a -c "$dir" -n "$(basename "$dir")")
  n_times $panes tmux split-window -t $win -c "$dir"
  tmux select-layout -t $win main-vertical
  tmux select-pane -t $win
  tmux send-keys -t $win "$EDITOR $@" Enter
}
alias q2='qq 2'
alias q3='qq 3'
