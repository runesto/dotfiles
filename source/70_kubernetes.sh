kdel () {
    kubectl -n $1 get pods | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} $2 | cut -f 1 -d ” ” | xargs -n1 kubectl -n $1 delete pod
}