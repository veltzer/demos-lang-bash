#!/bin/bash -eu

num=$((1 + $RANDOM % 100))

attempts=1
while true
do
	if [ $attempts -gt 5 ]
	then
		echo "You lose!"
		echo $attempts >> attempts.txt
		exit 1
	fi
	echo -n "give me a number: "
	read -r guess
	if [ $guess -lt $num ]
	then
		echo "too small"
	elif [ $guess -gt $num ]
	then
		echo "too big"
	else
		echo "you got it!"
		echo $attempts >> attempts.txt
		exit 0
	fi
	((++attempts))
done
