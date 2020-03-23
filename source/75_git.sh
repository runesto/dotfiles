git-grep-tree-ruter() {
	cd ~/src/ruter ; eval 'find . -type d -depth 2 -exec echo {} \; -exec git --git-dir={}/.git --work-tree=$PWD/{} grep --full-name $1 \;';  cd - ;
}