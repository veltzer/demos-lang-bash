\#\!/bin/bash -eu

# This example shows how to iterate both the index and value of an array in bash.
#
# References:
# - https://stackoverflow.com/questions/6723426/looping-over-arrays-printing-both-index-and-value

array=("item1" "item2" "item3")
for index in "${!array[@]}"
do
	echo "$index/${array[$index]}"
done
