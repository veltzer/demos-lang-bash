\#\!/bin/bash -eu

# This example explores magic variables in bash that can help with error handling.
#
# References:
# - https://gist.github.com/ahendrix/7030300

# this is the current line number
echo ${LINENO}
echo ${BASH_SOURCE}
# this does not work
# echo ${FUNCNAME}
echo "========================="

function print_stack_trace() {
	# this is the lowest place on the stack, line, file and function
	stack_frames="${#BASH_SOURCE[@]}"
	for (( i=${stack_frames}-1; i>=1; i-- ));
	do
		echo "stack frame $i"
		echo -e "\t${BASH_LINENO[$i]}"
		echo -e "\t${BASH_SOURCE[$i]}"
		echo -e "\t${FUNCNAME[$i]}"
	done
}

function foo() {
	print_stack_trace
}

print_stack_trace
foo
