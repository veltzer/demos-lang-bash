#!/bin/bash -ue

# This example shows how to read an array from a file.
# It reads the lines in '/etc/group' into an array.
#
# References:
# - https://stackoverflow.com/questions/1688999/how-can-i-read-a-list-of-filenames-from-a-file-in-bash

my_array=()
while read F
do
	my_array+=($F)
done < /etc/group

echo "${my_array[@]}"
