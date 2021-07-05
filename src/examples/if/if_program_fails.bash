#!/bin/bash -u

# This example shows the best way to check if a program fails in bash
# Notes:
# - you must collect the return code *right after* the running of the program.
# This is because any program run after it will change this return code ($?).
# - if you want to check if a program succeeds it easier since you can just
# do: if [program].
#
# References:
# - https://askubuntu.com/questions/29370/how-to-check-if-a-command-succeeded
# - https://stackoverflow.com/questions/10552711/how-to-make-if-not-true-condition

false
code=$?
if [ $code -ne 0 ]
then
	echo "yes, program fails"
fi

# this is the best way
if ! false
then
	echo "yes, program fails"
fi
