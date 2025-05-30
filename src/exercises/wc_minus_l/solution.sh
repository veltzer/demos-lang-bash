#!/bin/bash -eu

filename="$1"

count=0
while IFS= read -r line
do
	((count+=1))
done < "$filename"
echo "$count $filename"
