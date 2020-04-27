#!/bin/bash -u

# example of iterating all command line arguments using a for loop
# thw WRONG WAY!!!
# note that this way breaks up arguments which are passed as one.
# example: script x y with do x and y together.

for x in $@
do
	echo $x
done
