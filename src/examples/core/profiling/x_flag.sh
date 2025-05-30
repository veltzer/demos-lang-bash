#!/bin/bash -u

# This example shows the set -x flag.

function bad() {
	return 1
}

function fake_long_time() {
	/bin/sleep 2
}

function real_long_time() {
	local x=0
	while [[ $x -lt 1000000 ]]
	do
		let "x=x+1"
	done
}

set +x

bad
fake_long_time
real_long_time
