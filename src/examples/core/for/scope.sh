\#\!/bin/bash -eu

# This example examines the scope of a variable first defined
# a for loop in bash
# We examine whether the file will be a global variable or not.
#
# Results:
# - we indeed need to declare the variable as local before
# the loop if we want it to have local scope.

function loop_over_no_local() {
	arr=(red "yellow green" blue)
	for x in "${arr[@]}"
	do
		:
	done
}

function loop_over_local() {
	arr=(red "yellow green" blue)
	local y
	for y in "${arr[@]}"
	do
		:
	done
}

loop_over_no_local
if [ "$x" != "blue" ]
then
	echo "ERROR"
fi
loop_over_local
if ! [ -z ${y+x} ]
then
	echo "ERROR"
fi
