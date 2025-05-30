\#\!/bin/bash -eu

# An example that shows that variables in bash functions are global by default
# So what should you do? always use local

function change_globals {
	arr[6]=8
	var="bar"
}

function print_them {
	echo ${arr[6]}
	echo $var
}

function change_locals {
	local arr[6]=9
	local var="hey"
}

#print_them
change_globals
print_them
change_locals
print_them
