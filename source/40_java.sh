# For maven to work
export JAVA_HOME=$(/usr/libexec/java_home)

function java8 () {
	export JAVA_HOME=$(/usr/libexec/java_home -v 1.8);
}

function java17 () {
	export JAVA_HOME=$(/usr/libexec/java_home -v 17);
}

function java21 () {
	export JAVA_HOME=$(/usr/libexec/java_home -v 21);
}
