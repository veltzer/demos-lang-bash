#!/bin/bash -u

# This example shows how to use associative array in bash.
# NOTES:
# - this is a bash 4 feature. will not work on older versions.
# References:
# - https://stackoverflow.com/questions/1494178/how-to-define-hash-tables-in-bash

declare -A hashmap
hashmap["key"]="value"
hashmap["key2"]="value2"
echo "${hashmap["key"]}"
for key in ${!hashmap[@]}
	do echo $key
done
for value in ${hashmap[@]}
do
	echo $value
done
echo hashmap has ${#hashmap[@]} elements
