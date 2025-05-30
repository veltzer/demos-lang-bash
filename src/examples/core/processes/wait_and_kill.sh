\#\!/bin/bash -eu

# This example shows the various ways in which you can kill your children
# when your process dies. The tree ways are the three signal handlers
# listen below.
#
# References:
# - https://bash.cyberciti.biz/guide/How_to_clear_trap

function signal1() {
	kill -9 "$pidone"
	kill -9 "$pidtwo"
}

first=0
function signal2() {
	if [[ "$first" -eq 0 ]]
	then
		first=1
		kill 0
	fi
}

function signal3() {
	trap - SIGTERM
	kill 0
}

function process() {
	local name=$1
	((x=1))
	while true
	do
		echo "${name} is here $x"
		sleep 1
		((x++))
	done
}


process one &
pidone=$!
process two &
pidtwo=$!

sleep 2
trap signal1 SIGINT TERM
kill -s SIGINT $$

process one &
pidone=$!
process two &
pidtwo=$!

sleep 2
trap signal2 SIGINT TERM
kill -s SIGINT $$

process one &
pidone=$!
process two &
pidtwo=$!

sleep 2
trap signal3 SIGINT TERM
kill -s SIGINT $$
