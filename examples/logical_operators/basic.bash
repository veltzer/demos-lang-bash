#!/bin/bash -u

<<'COMMENT'

This is an example of how to write simple logical operators in bash.

NOTES:
- the spaces around the operators and the parenthesis is important. Without
it the shell would not be able to parse our expression.

References:
http://stackoverflow.com/questions/6270440/simple-logical-operators-in-bash

COMMENT

let "a=2"
let "b=2"
if [[ $a = 1 || $b = 2 ]]; then
	echo "yes"
else
	echo "no"
fi
if [[ $a = 2 && $b = 2 ]]; then
	echo "yes"
else
	echo "no"
fi
