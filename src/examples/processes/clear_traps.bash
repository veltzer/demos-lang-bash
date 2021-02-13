#!/bin/bash -u

# This example explains how to clear a trapped signal
# basically it's just doing "trap - [signals numbers]
#
# References:
# - https://bash.cyberciti.biz/guide/How_to_clear_trap

function signal_handler() {
	echo "In signal handler"
}

trap signal_handler SIGINT
echo "Press CTRL+C for the next 10 seconds to invoke signal handler..."
((x=10))
while [[ $x -gt 0 ]]
do
	echo $x
	((x--))
	sleep 1
done
trap - SIGINT
((x=10))
while [[ $x -gt 0 ]]
do
	echo $x
	((x--))
	sleep 1
done
