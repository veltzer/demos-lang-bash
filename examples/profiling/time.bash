#!/bin/bash -u

<<'COMMENT'

This is an example of using the bash 'time' keyword to time parts of a bash script.

COMMENT


function real_long_time() {
	local x=0
	while [[ $x -lt 100000 ]]; do
		let "x=x+1"
	done
	return 1
}

# this is the default way to use time
time ls -l

# this is the default way to use time
time real_long_time

# this is how we change the output format
TIMEFORMAT='It took %R in real time'
time real_long_time

# to suppress output
TIMEFORMAT=''
time real_long_time

# caputure the time it took
TIMEFORMAT='%R'
t=$((time real_long_time) 2>&1)
echo $?
echo "t is [$t]"
