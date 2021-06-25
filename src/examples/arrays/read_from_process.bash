#!/bin/bash -u

# This example shows how to read the output of a process right into an array
# variable in bash.
#
# References:
# - https://stackoverflow.com/questions/11426529/reading-output-of-a-command-into-an-array-in-bash

# using 'mapfile' - this is the best way
mapfile -t my_array_1 < <(for x in {2..20..3}; do echo "$x"; done)
echo $?
declare -p my_array_1

# using a loop with read
my_array_2=()
while IFS= read -r line
do
	my_array_2+=( "$line" )
done < <(for x in {2..20..3}; do echo "$x"; done)
echo $?
declare -p my_array_2

# using one line read
IFS=$'\n' read -r -d '' -a my_array_3 < <(for x in {2..20..3}; do echo "$x"; done && printf '\0' )
echo $?
declare -p my_array_3
