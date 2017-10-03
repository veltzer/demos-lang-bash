#!/bin/bash -u

# This example shows how to use associative array in bash.
#
# NOTES:
# - this is a bash 4 feature. will not work on older versions.
# - when getting values from a hash map using a key which is
# in a variable, quoting the key is essential in order to support
# keys which could have spaces in them.
# - when iterating the values of a hashmap the quotes in are
# *essential* in order to be able to deal with keys which have
# spaces in them.
#
# References:
# - https://stackoverflow.com/questions/1494178/how-to-define-hash-tables-in-bash
# - https://stackoverflow.com/questions/14525296/bash-check-if-variable-is-array

# declare a hashmap
declare -A hashmap

# insert values into a hashmap
hashmap["ke y1"]="val ue1"
hashmap["ke y2"]="val ue2"

# what happens when we try to access a hashmap with a wrong key?
# we get an error for an unbound variable. This is critical
# if you are running in a script with -u
set +u
echo ${hashmap["notthere"]}
set -u

# iterate all keys and values
for key in "${!hashmap[@]}"
do
	echo $key "${hashmap[$key]}"
done

# iterate all values
for value in "${hashmap[@]}"
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
