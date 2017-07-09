#!/bin/bash -u

# This is an example of using the bash 'time' keyword to time parts of a bash script.
# NOTES:
# - time is a keywork in bash.
# - time is not a builtin and so you will not be able to find it's documentation in 'man builtins'
# - by default it already outputs the time you give it.
# - it can receive a block of code and not just a single command (see below)
# - time preserves the return code of the function or command that it ran (very good).
# - time prints it's output into stderr by default.
# - since 'time' is a keyword you need to redirect it this way:
#	(time [arguments]) 2>)
# - see below how to capture it's output to a variable.

function real_long_time() {
	local x=0
	while [[ $x -lt 100000 ]]; do
		let "x=x+1"
	done
	return 1
}

# this is the default way to use time with an command
time ls -l

# this is the default way to use time with a functoin (same as above)
time real_long_time

# this is the default way to use time with a block of code
time { 
	real_long_time
	real_long_time
}

# this is how we change the output format
TIMEFORMAT='It took %R in real time'
time real_long_time

# to suppress output
TIMEFORMAT=''
time real_long_time

# caputure the time it took
# The problem with this approach is that the function that is run by time
# is now in a subshell (because of the $ surrounding it which creates a subshell)
# and therefore the function cannot change any environment variable and so it's
# in effect running in a different mode than the regular one.
TIMEFORMAT='%R'
t=$((time real_long_time) 2>&1)
echo $?
echo "t is [$t]"
