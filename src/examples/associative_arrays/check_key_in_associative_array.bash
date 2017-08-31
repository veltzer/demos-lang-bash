#!/bin/bash -u

# This example shows how to check if a key is in an associative array.
#
# References:
# - https://stackoverflow.com/questions/13219634/easiest-way-to-check-for-an-index-or-a-key-in-an-array

# declare a hashmap
declare -A hashmap

# insert values into a hashmap
hashmap["key1"]="value1"
hashmap["key2"]="value2"

function exists() {
	local key=$1
	local map=$2
	eval '[ ${'$map'['$key']+muahaha} ]'
}

function get_value() {
	local __user_var=$1
	local key=$2
	local map=$3
	eval $__user_var'=${'$map'[$key]}'
}

# get a single value out of a hashmap
echo "${hashmap["key1"]}"
get_value val key1 hashmap
echo $val

# iterate all keys
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

# check if a key is in a hashmap
if exists key1 hashmap
then
	echo "yes, key1 is in hashmap"
fi
