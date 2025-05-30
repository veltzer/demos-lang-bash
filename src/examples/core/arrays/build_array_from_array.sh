\#\!/bin/bash -eu

# This example shows how to build an array from the values of another array.
# This is something akin to a "map" function in functional programming.

array=("one" "two" "three")
target=()
for elem in "${array[@]}"
do
	target+=("a.$elem.b")
done
printf "%s\n" "${target[@]}"
