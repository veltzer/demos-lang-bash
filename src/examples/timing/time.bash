#!/bin/bash -u

# This is an example of how to time a bash function using the time(1)
#
# NOTES:
# - time is a shell keyword although there is also an executable (/usr/bin/time)
# to back it up if it is missing.
# - this means that 'time' should be fast.
# - 'time' executes in the same shell (see proof below) 
# - the problem with time is that it is hard to get the output from time
# (see below) and this also requires running a subshell.
#
# References:
# - https://stackoverflow.com/questions/13356628/is-there-a-way-to-redirect-time-output-to-file-in-linux

function set_a_shell_variable() {
	x=7
}

time set_a_shell_variable
if [ "$x" != 7 ]
then
	echo "ERROR"
fi

res=$({ time sleep 2; } 2>&1)
echo "res is [$res]"
