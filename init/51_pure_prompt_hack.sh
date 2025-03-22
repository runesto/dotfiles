original_code='if [[ $1 == precmd ]]; then
		# Initial newline, for spaciousness.
		print'
edited_code='if [[ $1 == precmd ]]; then
		# Initial newline, for spaciousness.
		# print'

original_code_without_whitespace=$($original_code | xargs)

current_code=$(cat $DOTFILES/vendor/pure/pure.zsh | awk 'FNR>=184 && FNR<=186' | xargs)

if [[ $current_code == $original_code ]]; then
	echo "Original"
elif [[ $current_code == $edited_code ]]; then
	echo "Edited"
else
	echo $original_code_without_whitespace
	echo $original_code
	echo $edited_code
	echo $current_code
fi
