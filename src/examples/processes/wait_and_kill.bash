#!/bin/bash -u

first=0
function kill_signal() {
	if [[ $first -eq 0 ]]
	then
		first=1
		kill 0
	fi
	# kill -9 $pidone
	# kill -9 $pidtwo
}

function process() {
	local name=$1
	let x=1
	while true
	do
		echo "${name} is here $x"
		sleep 1
		((x++))
	done
}

trap kill_signal INT TERM 

process one &
pidone=$!
process two &
pidtwo=$!

wait $pidone
wait $pidtwo
