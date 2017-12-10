#!/bin/bash -u

# This example shows how to test if a variable is empty.
# The best way is the -z shown below.
#
# NOTES:
# - if you use the -z test on a variable which is not defined you will get
# an exception.
#
# References:
# - https://serverfault.com/questions/7503/how-to-determine-if-a-bash-variable-is-empty

myvar=""
if [ -z "$myvar" ]
then
	echo "yes, it is empty"
else
	echo "no, it is not empty"
fi
myvar="somevalue"
if [ -z "$myvar" ]
then
	echo "yes, it is empty"
else
	echo "no, it is not empty"
fi
if [ -z "$no_such_var" ]
then
	echo "yes, it is empty"
fi
