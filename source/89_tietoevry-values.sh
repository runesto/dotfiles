#export ORACLE_PORT_1521_TCP_ADDR=192.168.1.37 # The host which is running Oracle server
export ORACLE_PORT_1521_TCP_ADDR=localhost # The host which is running Oracle server
export GOSU_UID=`id -u` GOSU_GID=`id -g` # ???
export TXS_PORT_8080_TCP_ADDR=localhost # The host which is running the TXS app
export TXS_PORT_8080_TCP_PORT=8080 # The port the TXS app is running on
#export WMQ_PORT_1414_TCP_ADDR=192.168.1.37 # The host which is running the MQ server
export WMQ_PORT_1414_TCP_ADDR=localhost # The host which is running the MQ server
export WMQ_PORT_1414_TCP_PORT=1414 # The port the MQ server is running on

export JAVA_HOME=$(/usr/libexec/java_home -v 17)

alias txs-server="cd ~/src/tietoevry/ENTERPRISE_TXS/txs-server"

alias colima-renew="colima delete; colima start --cpu 4 --memory 12 --arch x86_64 --disk 100"
