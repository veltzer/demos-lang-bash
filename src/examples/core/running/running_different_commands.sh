#!/bin/bash -u

# This is an example of how to put an entire command line in a variable and run it later
# note that redirection cannot happen in this case.

command=
if [ "$#" -eq 0 ]
then
        command="ls -l"
elif [ "$#" -eq 1 ]
then
	command="find /etc -name \"*ab\" 2> /dev/null"
fi

# now run the command
$command
