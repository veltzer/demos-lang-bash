#!/bin/bash -u

# This is an example of a process in bash which catches the SIGTERM signal from the
# OS and refuses to die...

function my_signal() {
	echo "in my_signal"
}

trap my_signal SIGTERM

let "i=0"
while true
do
	echo "[$i] nag...nag..."
	sleep 1
	let "i=i+1"
done
