# Remove all docker containers and images
function dockerclean () { (
	docker rm -f $(docker ps -a -q) || true) && (docker rmi -f $(docker images -q) || true) && (docker volume rm $(docker volume ls |awk '{print $2}') || true) ;
}

# Stop all docker containers
function dockerstopall () { 
	(docker rm -f $(docker ps -a -q)) 
} 
