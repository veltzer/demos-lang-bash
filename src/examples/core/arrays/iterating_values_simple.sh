\#\!/bin/bash -eu

# This example shows how to iterate an array in bash.
#
# References:
# - https://www.cyberciti.biz/faq/bash-iterate-array/

array=("one" "two" "three")
for elem in "${array[@]}"
do
	echo "$elem"
done
