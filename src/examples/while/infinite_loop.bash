#!/bin/bash -u

# This example shows how to do an infinite loop in bash
#
# The result is that there are many ways to do an infinite
# loop. Below is just the most self documenting and clear
# way to do it.
#
# References:
# - https://www.cyberciti.biz/faq/bash-infinite-loop/

# the most clear way
while true
do
	echo "I'm here"
	sleep 1
done
