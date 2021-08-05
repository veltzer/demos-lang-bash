#!/bin/bash -u

# This is an example of how to write simple logical operators in bash.
# NOTES:
# - the spaces around the operators and the parenthesis is important. Without
# it the shell would not be able to parse our expression.
# References:
# http://stackoverflow.com/questions/6270440/simple-logical-operators-in-bash

if [[ 'foo' = 'bar' ]]
then
	echo "ERROR"
fi

if [[ 'foo' != 'foo' ]]
then
	echo "ERROR"
fi

if [[ 2 == 3 || 3 == 4 ]]
then
	echo "ERROR"
fi

let "a=2"
let "b=2"
if [[ $a = 1 && $b = 2 ]]
then
	echo "ERROR"
fi
if [[ $a = 1 || $b = 1 ]]
then
	echo "ERROR"
fi
