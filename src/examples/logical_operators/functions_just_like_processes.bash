#!/bin/bash -ue

# This example shows that as far as bash boolean operators are concerned
# then functions in bash returning 0 and 1 are just like processes having
# the same exit statuses.

function yes() {
	return 0
}

function no() {
	return 1
}

function print_truth_table() {
	local op=$1
	for x in yes no
	do
		for y in yes no
		do
			if [ $op = "&&" ]
			then
				$x && $y
				a=$?
			fi
			if [ $op = "||" ]
			then
				$x || $y
				a=$?
			fi
			echo "$x $op $y = $a"
		done
	done
}

print_truth_table "&&"
print_truth_table "||"
