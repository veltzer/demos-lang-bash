#!/bin/bash -u

# This example shows how to write an infinite loop in bash.
#
# The result is that there are many ways to do an infinite
# loop. Below is just the most self documenting and clear
# way to do it.
#
# References:
# - https://www.cyberciti.biz/faq/bash-infinite-loop/

# This is the nicest way
while true
do
	echo "here"
	sleep 1
done
