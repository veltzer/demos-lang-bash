#!/bin/bash -eu

# This is an example of how to put an entire command line in a variable and run it later
# note that redirection cannot happen in this case.

command=
if [[ "$#" -eq 0 ]]
then
        command="ls -l"
elif [[ "$#" -eq 1 ]]
then
	# shellcheck disable=SC2089  # teaching: this example shows that quotes inside a variable are not respected when it is run later
	command="find /etc -name \"*ab\" 2> /dev/null"
fi

# now run the command
# shellcheck disable=SC2090  # teaching: this example shows that quotes inside a variable are not respected when it is run later
${command}
