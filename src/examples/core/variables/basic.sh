#!/bin/bash -eu
# the point is to show the exit status of the failed assignment
# shellcheck disable=SC2181

# basic bash variable usage

somevar=7
echo ${somevar}
# the next line will create an error since only "this" will be inserted
# into the 'othervar' variable and the command 'is a var' will be attemted (and failed).
othervar=this is a var 2> /dev/null
if [ $? != 0 ]
then
	echo "yes, there was an error"
fi
# this is the correct way...
othervar="this is a var"
echo "${othervar}"
