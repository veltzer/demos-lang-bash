#!/bin/bash -ue

# This is an example of how to do some type of 'exception handling'
# in bash by using a subshell and exit.
# The advantage of this approach is that the function run in a subshell
# could have "set -e" and thus with the first failure return to the
# parent with an exit code.
#
# References:
# - https://stackoverflow.com/questions/22009364/is-there-a-try-catch-command-in-bash

function exit_with_error() {
	local code=$1
	exit $code
}

function set_minus_e() {
	local code=$1
	set -e
	true
	exit $code
	set +e
}

# This is an example of a parent which is strict (set -e)
# which wants to collect the return code of the child
# correctly. Planly running the child will not do since
# if the child returns a failed error code the parent
# will die too. That is the reason for the
# "(function) || result=$?" construct.
result=0
expected=5
(exit_with_error $expected) || result=$?
if [ "$result" != "$expected" ]
then
	echo "ERROR"
fi

# this is an example of a parent which is not strict
# calling a child which is strict
# We still need to run the child in a subshell since if
# the child does a 'set -e' and will not be in a subshell
# then the failure of the child will fail the parent.
# unlike the example above we don't need to do anything
# special to collect the return code of the child in this case.
# the next statement is to cancel the 'set -e' at the shbang line above
set +e
expected=0
(set_minus_e $expected)
result=$?
# just to make sure that we are still not strict
false
if [ "$result" != "$expected" ]
then
	echo "ERROR"
fi

set +e
expected=7
(set_minus_e $expected)
result=$?
# just to make sure that we are still not strict
false
if [ "$result" != "$expected" ]
then
	echo "ERROR"
fi

echo "ATEND"
