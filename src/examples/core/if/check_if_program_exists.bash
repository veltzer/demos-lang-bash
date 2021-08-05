#!/bin/bash -u

# This example shows how to check if a command exists or not
# You can either use 'hash' or 'command -v'.
#
# Both work well. In theory command -v is weaker since it will also respects
# aliases but as we all know aliases don't work in shell scripts without
# special provisions which means that you can use 'command -v' without
# problems in scripts.
#
# References:
# - http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script

if hash ls 2>/dev/null
then
	echo "yes, ls exists"
else
	echo "no, ls doesnt exist"
fi

if hash lls 2>/dev/null
then
	echo "yes, lls exists"
else
	echo "no, lls doesnt exist"
fi
if command -v ls 1>/dev/null 2>/dev/null
then
	echo "yes, ls exists"
else
	echo "no, ls doesnt exist"
fi
if command -v lls 1>/dev/null 2>/dev/null
then
	echo "yes, lls exists"
else
	echo "no, lls doesnt exist"
fi
alias foo=bar
type foo
if command -v foo 1>/dev/null 2>/dev/null
then
	echo "yes, foo exists"
else
	echo "no, foo doesnt exist"
fi
