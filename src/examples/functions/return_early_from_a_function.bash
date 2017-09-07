#!/bin/bash -ue

# This is an example of how to exit early from a function
# Take away: use return

function myfunc {
	local arg=$1
	echo "start"
	if [[ $arg -eq 1 ]]
	then
		return
	fi
	echo "mid"
	if [[ $arg -eq 2 ]]
	then
		return
	fi
	echo "fini"
	return
}

echo "with 1"
myfunc 1
echo "with 2"
myfunc 2
echo "with 3"
myfunc 3
