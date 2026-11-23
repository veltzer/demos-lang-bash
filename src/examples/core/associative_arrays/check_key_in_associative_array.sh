#!/bin/bash -eu

# This example shows how to check if a key is in an associative array.
#
# References:
# - https://stackoverflow.com/questions/13219634/easiest-way-to-check-for-an-index-or-a-key-in-an-array

# declare a hashmap
declare -A hashmap

# insert values into a hashmap
hashmap["key1"]="value1"
hashmap["key2"]="value2"

if [[ -z "${hashmap['key1']+muhaha}" ]]
then
	echo "ERROR"
fi
if [[ -n "${hashmap['notthere']+muhaha}" ]]
then
	echo "ERROR"
fi

# and now with a function

function exists() {
	local __user_var=$1
	local key=$2
	eval "[ \${${__user_var}['${key}']+muahaha} ]"
}

# capture the status of the predicate function instead of calling it
# in a condition, which would disable "set -e" inside it
set +e
exists hashmap key1
rc=$?
set -e
if [[ "${rc}" -ne 0 ]]
then
	echo "ERROR"
fi
set +e
exists hashmap notthere
rc=$?
set -e
if [[ "${rc}" -eq 0 ]]
then
	echo "ERROR"
fi
