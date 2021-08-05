#!/bin/bash -u

# This is an example of how to check if you are root in a bash shell script.
# References:
# - https://stackoverflow.com/questions/18215973/how-to-check-if-running-as-root-in-a-bash-script

if [ "$EUID" -ne 0 ]
then
	echo "Please run as root"
	exit
fi
