#!/bin/bash -u

# This example shows how to use associative array in bash.
#
# NOTES:
# - this is a bash 4 feature. will not work on older versions.
#
# References:
# - https://stackoverflow.com/questions/1494178/how-to-define-hash-tables-in-bash
# - https://stackoverflow.com/questions/14525296/bash-check-if-variable-is-array

# declare a hashmap
declare -A hashmap

# insert values into a hashmap
hashmap["key1"]="value1"
hashmap["key2"]="value2"

# iterate all keys and values
for key in ${!hashmap[@]}
do
	echo $key ${hashmap[$key]}
done

# iterate all values
for value in ${hashmap[@]}
do
	echo $value
done

# finding number of elements
echo hashmap has ${#hashmap[@]} elements

# check if the variable is of type hashmap
if [[ "$(declare -p hashmap)" =~ "declare -A" ]]; then
	echo "yes, it's a hashmap"
fi

# print an associative array (only values)
echo "this is the hashmap ${hashmap[@]}"
echo "this is the hashmap ${hashmap[*]}"
