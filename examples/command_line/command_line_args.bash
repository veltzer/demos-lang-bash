#!/bin/bash -u

# example of showing all command line arguments using a for loop

echo "lengh of command line is [$#]"
for x in $@
do
	echo $x
done
