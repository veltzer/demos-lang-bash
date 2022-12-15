#!/bin/bash

# this script will received the name of the process
# that we want statistics for
# for example: zoom

# the next block of code checks that we have EXACTLY one argument
if [ $# != 1 ]
then
	echo "please pass a single program name"
	exit 1
fi
# echo "the name of application that I got is [$1]..."

process_ids=$(pidof $1)
# echo "the processes that make up zoom are $process_ids"

# now lets break up the process_ids into individual ids
IFS=' ' read -ra IDS <<< "$process_ids"
for pid in "${IDS[@]}"
do
	# echo "$pid"
	for open_file in /proc/$pid/fd/*
	do
		link_name=$(readlink $open_file)
		if [[ $link_name == socket:* ]]
		then
			sock_number=${link_name:8}
			sock_number=${sock_number::-1}
			# echo "$sock_number"
			# we need to find the line(s) with this number ($sock_number) in /proc/net/tcp in the
			# 11th column
			cat /proc/net/tcp | grep $sock_number | tr -s " " | cut -d " " -f 6 | tr ":" " "
		fi
	done
done
