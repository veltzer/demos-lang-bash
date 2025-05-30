\#\!/bin/bash -eu

# This example shows how to do logical operators on the return
# values of processes.
# In order to do this we will use two shell built-ins: 'true' and 'false'.
# 'true' returns 0 as exit status.
# 'false' returns 1 as exit status.
# They are small, shell-builtins, that behave like processes.
# Remember that 0 in shell means true and any other value
# means false.

function print_truth_table() {
	local op=$1
	for x in true false
	do
		for y in true false
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
