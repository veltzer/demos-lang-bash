\#\!/bin/bash -eu

# This example shows how to loop over path components
#
# References:
# - https://stackoverflow.com/questions/11655770/looping-through-the-elements-of-a-path-variable-in-bash

for path in ${PATH//:/ }; do
	if [ -d "$path" ]
	then
		echo "$path"
	fi
done
