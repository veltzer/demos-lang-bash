#!/bin/bash -eu

filename="$1"
output="good_ips.txt"

touch "$output"
while IFS= read -r ip
do
	if ping -w 2 $ip
	then
		echo $ip >> $output
	fi
done < "$filename"
