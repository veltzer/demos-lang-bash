#!/bin/bash -u

# This example deals with how to print arrays.
#
# References:
# - https://stackoverflow.com/questions/15691942/bash-print-array-elements-on-separate-lines

my_array=(
	"first value"
	"second value"
	"third value"
)

# these two work the same as far as I can tell
echo "${my_array[@]}"
echo "${my_array[*]}"
# the next line does not work, as it only prints the first element of the array
echo "$my_array"
# you can always iterate the array and print the values one by one
for elem in "${my_array[@]}"
do
	echo $elem
done
# another way
printf '%s\n' "${my_array[@]}"
# another suggestion
( IFS=$'\n'; echo "${my_array[*]}" )
