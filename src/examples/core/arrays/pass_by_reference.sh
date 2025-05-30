\#\!/bin/bash -eu

# This is an example of how to pass an array by reference to a bash function
#
# References:
# - https://stackoverflow.com/questions/16461656/bash-how-to-pass-array-as-an-argument-to-a-function
# - http://bytesoap.com/2013/bash-passing-by-reference


function add_value() {
	local -n array=$1
	local value=$2
	array+=("$value")
}

my_array=(a b c d e f g)
add_value my_array "this value"
add_value my_array "that value"
printf '%s\n' "${my_array[@]}"
