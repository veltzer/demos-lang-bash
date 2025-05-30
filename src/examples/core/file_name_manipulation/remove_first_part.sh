#!/bin/bash -u

# This is an example of how to remove the first component of a path in bash.
#
# References:
# - https://stackoverflow.com/questions/5311956/remove-first-directory-components-from-path-of-file

# for relative paths
filename="var/lib/foo.lock"
result="${filename#*/}"
if [ "$result" != "lib/foo.lock" ]
then
	echo "ERROR"
fi
# for absolute paths
filename="/var/lib/foo.lock"
result="${filename#/*/}"
if [ "$result" != "lib/foo.lock" ]
then
	echo "ERROR"
fi
