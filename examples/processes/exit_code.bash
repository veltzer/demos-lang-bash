#!/bin/bash -u

# This is an example of how to check the exit code of a child
# References:
# - http://stackoverflow.com/questions/26675681/bash-how-to-check-the-exit-status-using-an-if-statement
# - http://stackoverflow.com/questions/5195607/checking-bash-exit-status-of-several-commands-efficiently

false
if [ $? -ne 0 ]; then
	echo "command which should fail failed"
else
	echo "command which should fail succeeded"
fi
true
if [ $? -ne 0 ]; then
	echo "command which should succeed failed"
else
	echo "command which should succeed succeeded"
fi
# and now in one line
if true; then
	echo "command which should fail failed"
else
	echo "command which should fail succeeded"
fi
if false; then
	echo "command which should succeed failed"
else
	echo "command which should succeed succeeded"
fi
# ! operator
if ! true; then
	echo "command which should succeed failed"
else
	echo "command which should succeed succeeded"
fi
if ! false; then
	echo "command which should fail failed"
else
	echo "command which should fail succeeded"
fi
# and now with a function
function mytest {
	"$@"
	local status=$?
	echo "entering with $1"
	if [ $status -ne 0 ]; then
		echo "error with $1" >&2
		echo "faking exit with status $status"
		# exit $status
	fi
	echo "returning with status $status"
	return $status
}
mytest false
mytest true
