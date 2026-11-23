#!/bin/bash -eu

# This shows how to get your own script name
#
# References:
# - https://stackoverflow.com/questions/192319/how-do-i-know-the-script-file-name-in-a-bash-script

me=$(basename "$0")
echo "${me}"

if [[ -L "$0" ]]
then
	target=$(readlink "$0")
else
	target="$0"
fi
me=$(basename "${target}")
echo "${me}"
