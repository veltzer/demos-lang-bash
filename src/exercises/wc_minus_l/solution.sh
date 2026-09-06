#!/bin/bash -eu
# read must name a variable even though only the line count is used
# shellcheck disable=SC2034

filename="$1"

count=0
while IFS= read -r line
do
	((count+=1))
done < "${filename}"
echo "${count} ${filename}"
