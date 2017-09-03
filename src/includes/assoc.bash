# This file defines helpers for dealing with associative arrays
# in bash

# the only problem with this function now is that it cannot print associative
# arrays which have white spaces in keys
function assoc_print() {
	local __map=$1
	eval 'local keys=(${!'$__map'[@]})'
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
