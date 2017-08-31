#!/bin/bash -u

# This is an example of how to measure the time a bash function takes using
# the 'times' shell builtin.

function measure() {
	local __user_var=$1
	local count=$2
	local function_name=$3
	local start=$(date +%s%N)
	let "i=0"
	while [ $i -lt $count ]
	do
		$function_name
		let "i=i+1"
	done
	local ret=$?
	local end=$(date +%s%N)
	local diff=$(echo "($end - $start)/$count" | bc -l)
	eval $__user_var=$diff
	return $ret
}

function my_func() {
	:
}


measure t 10000 my_func
echo "average time is [$t]"
