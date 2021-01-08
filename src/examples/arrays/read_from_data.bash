#!/bin/bash -u

# This example shows how to read some string and turn it into an array 
# variable in bash.
#
# References:
# - https://stackoverflow.com/questions/10586153/split-string-into-an-array-in-bash

# using 'mapfile' - this is the best way
data="2 4 6 8 10"
mapfile -td " " my_array_1 <<< "$data "
unset 'my_array_1[-1]'
echo $?
declare -p my_array_1

# using a loop with read
my_array_2=()
while read -d ' ' -r line
do
	my_array_2+=( "$line" )
done <<< "$data "
echo $?
declare -p my_array_2

# using one line read 
read -r -a my_array_3 <<< "$data"
echo $?
declare -p my_array_3
