#!/bin/bash -u

# This example shows how to read an array from a file.
# Note:
# - The recommended way is using the 'mapfile' builtin.
# - Look for help on the 'mapfile' builtin in "man builtins"
# - Dont use "read -a" as it is hard to get working right (see below).
#
# References:
# - https://stackoverflow.com/questions/1688999/how-can-i-read-a-list-of-filenames-from-a-file-in-bash

filename="data/list_of_values.txt"

my_array=()
while read F
do
	my_array+=($F)
done < "$filename"
echo $?
declare -p my_array

readarray -t my_array_2 < "$filename"
echo $?
declare -p my_array_2

mapfile -t my_array_3 < "$filename"
echo $?
declare -p my_array_3

read -a my_array_4 -d $'\n' < "$filename"
echo $?
declare -p my_array_4

IFS=$'\n' read -d '' -r -a my_array_5 < "$filename" 
echo $?
declare -p my_array_5
