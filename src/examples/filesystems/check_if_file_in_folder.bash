#!/bin/bash -u

# This script checks if a file is in a folder
# References:
# - https://unix.stackexchange.com/questions/6435/how-to-check-if-pwd-is-a-subdirectory-of-a-given-path

f1="/etc/foo"
f2="/etc"
if [ "${f1##${f2}}" != "${f1}" ]; then
	echo "yes"
else
	echo "no"
fi
f1="/var/foo"
f2="/etc"
if [ "${f1##${f2}}" != "${f1}" ]; then
	echo "yes"
else
	echo "no"
fi
