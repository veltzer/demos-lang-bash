#!/bin/bash -u

<<'COMMENT'

This is an example of how to source the output of some process.
This enables you to write processes that output the changes in the
shell they are in charge of.

Basically there are three ways to do it:
1. The obvious but hard way. Store the output of the command into a temporate file and source it.
2. Use the source command with the < sign: source <(echo export FOO=zoo)
3. Use the eval command. eval "$(echo export FOO=bar)"

References:
- http://stackoverflow.com/questions/1279953/how-to-execute-the-output-of-a-command-within-the-current-shell

COMMENT

export FOO=1
echo $FOO
source <(echo export FOO=2)
echo $FOO
eval $(echo export FOO=3)
echo $FOO
filename=$(mktemp)
echo "export FOO=4" >> $filename
source $filename
rm $filename
echo $FOO
