#!/bin/bash -u

# This is an example of how to remove a value from an array in bash.
# If the value appears several times all of it's appearences
# will be removed.
#
# References:
# - https://stackoverflow.com/questions/16860877/remove-element-from-array-shell

function remove_value() {
	local -n array=$1
	local value=$2
	new_array=()
	for current_value in "${array[@]}"
	do
		if [ $current_value != "$value" ]
		then
			new_array+=("$current_value")
		fi
	done
	array=("${new_array[@]}")
}

my_array=(a b c d e a f g)
echo "${my_array[@]}"
remove_value my_array a
echo "${my_array[@]}"
