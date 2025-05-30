#!/bin/bash -eu

x=0
while true
do
	echo "[$x] nag nag..."
	sleep 1
	let "x=x+1"
done
