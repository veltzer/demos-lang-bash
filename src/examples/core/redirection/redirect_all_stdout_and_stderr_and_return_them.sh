#!/bin/bash -u

# This example examines how can you redirect all stdout for an entire script.
#
# References:
# - https://stackoverflow.com/questions/314675/how-do-i-redirect-the-output-of-an-entire-shell-script-within-the-script-itself

echo "before"
echo "stdout text"
echo "stderr text" >&2
echo "after redirect"
exec 3>&1 4>&2 1> /dev/null 2> /dev/null
echo "stdout text"
echo "stderr text" >&2
exec 1>&3 2>&4
echo "after return"
echo "stdout text"
echo "stderr text" >&2
