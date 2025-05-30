\#\!/bin/bash -eu

# This is an example of how to remove the last part of a filename.
# The better way is not to use the 'dirname(1)' utility but rather to use the bash
# built-in string manipulation syntax.
# References:
# - https://unix.stackexchange.com/questions/28771/how-to-remove-last-part-of-a-path-in-bash

filename="/var/lib/foo.lock"
result=$(dirname "${filename}")
if [ "$result" != "/var/lib" ]
then
	echo "ERROR"
fi
result="${filename%/*}"
if [ "$result" != "/var/lib" ]
then
	echo "ERROR"
fi
