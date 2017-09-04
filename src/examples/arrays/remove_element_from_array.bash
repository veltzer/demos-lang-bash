#!/bin/bash -ue

# This is an example of how to remove an element from an array in bash.
# References:
# - https://stackoverflow.com/questions/16860877/remove-element-from-array-shell

function remove_value() {
	local -n array="$1"
	local value="$2"
	new_array=()
	for current_value in "${array[@]}"
	do
		[[ $current_value != "$value" ]] && new_array+=("$current_value")
	done
	array=new_array
}

my_array=(a b c d e a f g)
echo "before"
printf '%s\n' "${my_array[@]}"
echo "===================="
remove_value my_array a
echo "after"
printf '%s\n' "${my_array[@]}"
echo "===================="
