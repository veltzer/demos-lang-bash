\#\!/bin/bash -eu

# This is an example of how to get the last part of a directory or file
# The idea is to either use the basename(1) command
# or the faster ${path##*/} which is internal to bash.
#
# References:
# - http://stackoverflow.com/questions/13767252/ubuntu-bash-script-how-to-split-path-by-last-slash
# - https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash

path="/var/lib/foo.bar"
result="$(basename $path)"
if [ "$result" != "foo.bar" ]
then
	echo "ERROR"
fi
result="${path##*/}"
if [ "$result" != "foo.bar" ]
then
	echo "ERROR"
fi
