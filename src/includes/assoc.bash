# This file defines helpers for dealing with associative arrays
# in bash
#
# References:
# - http://www.artificialworlds.net/blog/2012/10/17/bash-associative-array-examples/

# This is a function to print out an associative array.
# It has been checked to handle associative arrays which have spaces
# in the keys or values correctly.
function assoc_print() {
	local __map=$1
	eval 'local keys=("${!'$__map'[@]}")'
	local len
	eval 'local len=${#'$__map'[@]}'
	local i
	for (( i=0; $i < $len; i+=1 ))
	do
		local key=${keys[$i]}
		eval local val=$\{$__map[\"$key\"]\}
		echo "$key --> $val"
	done
}
