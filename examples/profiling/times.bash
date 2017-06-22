#!/bin/bash -u

<<'COMMENT'

This is an example of how to profile using the 'times' bash builtin.

NOTES:
- As you can see from the analysis below the problem with 'times' is that
it always returns 0 as a return value. So you can't just run regular
commands under times since their return value will be lost
- Another problem with this approach is that 'times' has a bad interaction
with processes 


COMMENT


function bad() {
	return 1
}

function fake_long_time() {
	/bin/sleep 2
}

function real_long_time() {
	local x=0
	while [[ $x -lt 1000000 ]]; do
		let "x=x+1"
	done
}

function measure() {
	local function=$1
	t1=$(times)
	$function
	ret=$?
	t2=$(times)
	echo $t2 $t1
	return $ret
}

measure bad
measure fake_long_time
measure real_long_time
