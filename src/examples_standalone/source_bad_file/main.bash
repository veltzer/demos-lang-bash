#!/bin/bash -ue

# This example shows how to source a file which you are not sure has loud
# code or maybe returns an error
#
# The main points:
# - redirect the output of script (both out and err) to avoid seeing
# the output of the script.
# - the trick with '|| result=1' is a must to avoid failure of
# the 'source' command itself which will fail in three cases
# that I can think of:
#	- the syntax of the sourced file is bad
#	- the source file returns an error (the last command
# of the sourced file is bad or 

echo "before bad_syntax"
result=0
source bad_syntax.bashinc > /dev/null 2> /dev/null || result=1
echo $result
echo "after bad_syntax"

echo "before command_fail"
result=0
source command_fail.bashinc > /dev/null 2> /dev/null || result=1
echo $result
echo "after command_fail"


echo "before loud"
result=0
source loud.bashinc > /dev/null 2> /dev/null || result=1
echo $result
echo "after loud"
