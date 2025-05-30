\#\!/bin/bash -eu

# This example shows how to write a bash function that can get a value
# from any hashmap without launching a subshell.

# declare a hashmap
declare -A hashmap

# insert values into a hashmap
hashmap["key1"]="value1"
hashmap["key2"]="value2"

function get_value() {
	local __user_var=$1
	local key=$2
	local map=$3
	eval $__user_var'=${'$map'['$key']}'
}

get_value val1 key1 hashmap
get_value val2 key2 hashmap
if [ $val1 != "value1" ]
then
	echo "ERROR"
fi
if [ $val2 != "value2" ]
then
	echo "ERROR"
fi
