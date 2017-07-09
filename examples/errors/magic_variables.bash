#!/bin/bash -u

# This example explores magic variables in bash that can help with error handling.

# this is the current line number
echo ${LINENO}
echo ${BASH_SOURCE}
# this does not work
#echo ${FUNCNAME}

# this is the lowest place on the stack, line, file and function
stack_frames="${#BASH_SOURCE[@]}"
for (( i=${stack_frames}-1; i>=0; i-- ));
do
	echo "stack frame $i"
	echo -e "\t${LINENO[$i]}"
	echo -e "\t${BASH_SOURCE[$i]}"
	echo -e "\t${FUNCNAME[$i]}"
done
