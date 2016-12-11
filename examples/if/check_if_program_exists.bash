#!/bin/bash

<<'COMMENT'

This example shows how to check if a command exists or not

References:
- http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script

COMMENT

if hash ls 2>/dev/null; then
	echo "yes, ls exists"
else
	echo "no, ls doesnt exist"
fi

if hash lls 2>/dev/null; then
	echo "yes, lls exists"
else
	echo "no, lls doesnt exist"
fi
