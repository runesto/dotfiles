# Not RHEL-tested. Abort if RHEL
is_rhel && return 1

# Remove all docker containers and images and volumes
function dockerclean () { (
	docker rm -f $(docker ps -a -q) || true) && (docker rmi -f $(docker images -q) || true) && (docker volume rm $(docker volume ls |awk '{print $2}') || true) ;
}

# Stop all docker containers
function dockerdeleteallcontainers () {
	(docker rm -f $(docker ps -a -q)) 
} 
