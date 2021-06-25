#!/bin/bash -u

# This is an example of doing profiling in bash using the date(1) utility and bc(1).
# Notes:
# - this is a very clean way of doing profiling.
# - unlike the 'time' based solution the function in this solution is running in the same
# shell and not in a subshell.
# - the solution does not change what the function outputs.
# References:
# - https://unix.stackexchange.com/questions/12068/how-to-measure-time-of-program-execution-and-store-that-inside-a-variable

function real_long_time() {
	local x=0
	while [[ $x -lt 100000 ]]
	do
		let "x=x+1"
	done
	return 1
}

function measure() {
	local function_name=$1
	local start=$(date +%s.%N)
	$function_name
	local ret=$?
	local end=$(date +%s.%N)
	diff=$(echo "$end - $start" | bc -l)
	return $?
}

measure real_long_time
printf "%.3f\n" $diff
