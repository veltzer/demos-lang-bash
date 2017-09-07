#!/bin/bash -ue

# This example shows how to iterate the index number of an array in bash.
#
# References:
# - https://stackoverflow.com/questions/6723426/looping-over-arrays-printing-both-index-and-value

#!/bin/bash

array=(item1 item2 item3)
for index in ${!array[@]}
do
	echo $index/${#array[@]}
done
