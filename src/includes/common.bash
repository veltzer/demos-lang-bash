# This is a common file that you can source in your example to avoid repetative
# code.

function error() {
	local parent_lineno="$1"
	local message="$2"
	local code="${3:-1}"
	if [[ -n "$message" ]] ; then
		echo "Error on or near line ${parent_lineno}: ${message}; exiting with status ${code}"
	else
		echo "Error on or near line ${parent_lineno}; exiting with status ${code}"
	fi
	exit "${code}"
}

function die() {
	local frame=0
	while caller $frame; do
		((frame++));
	done
	echo "$*"
	exit 1
}
