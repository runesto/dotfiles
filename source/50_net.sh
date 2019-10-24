# IP addresses
alias wanip="dig +short myip.opendns.com @resolver1.opendns.com"

# View HTTP traffic
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
