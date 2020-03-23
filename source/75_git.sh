git-grep-tree() {
	eval 'find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} status \;'
}