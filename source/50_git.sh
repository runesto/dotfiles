
gitprunebranches () {
	git remote prune origin; git branch --v | grep "\[gone\]" | awk '{print $1}' | xargs git branch -D
}
