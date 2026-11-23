#!/bin/bash -eu

# This is an example of how to write simple logical operators in bash.
# NOTES:
# - the spaces around the operators and the parenthesis is important. Without
# it the shell would not be able to parse our expression.
# References:
# http://stackoverflow.com/questions/6270440/simple-logical-operators-in-bash

s1='foo'
s2='bar'
n2=2
n3=3
n4=4
if [[ "${s1}" = "${s2}" ]]
then
	echo "ERROR"
fi

if [[ "${s1}" != 'foo' ]]
then
	echo "ERROR"
fi

if [[ "${n2}" == "${n3}" || "${n3}" == "${n4}" ]]
then
	echo "ERROR"
fi

((a=2))
((b=2))
if [[ ${a} = 1 && ${b} = 2 ]]
then
	echo "ERROR"
fi
if [[ ${a} = 1 || ${b} = 1 ]]
then
	echo "ERROR"
fi
