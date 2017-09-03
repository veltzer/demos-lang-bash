#!/bin/bash -u

# This example show basic object oriented programming using bash.
#
# This is a work in progress
#
# References:
# - http://hipersayanx.blogspot.co.il/2012/12/object-oriented-programming-in-bash.html
# - https://stackoverflow.com/questions/36771080/creating-classes-and-objects-using-bash-scripting
# - https://github.com/lenormf/bash-oop

# the infrastructure

function new_object() {
	local __obj_name=$1
	eval declare -gA $__obj_name
}

function set_attr() {
	local __obj_name=$1
	local attr=$2
	local value=$3
	eval $__obj_name["$attr"]="$value"
}

function get_attr() {
	local __var_name=$1
	local __obj_name=$2
	local attr=$3
	eval $__var_name=$\{$__obj_name[\"$attr\"]\}
}

function print_obj() {
	local __obj_name=$1
	eval declare -A __obj
	eval __obj=$__obj_name
	for key in ${!__obj[@]}
	do
		echo $key
		# echo $key ${__obj[$key]}
	done
}

new_object obj
set_attr obj name mark
set_attr obj surname veltzer
get_attr name obj name
get_attr surname obj surname
echo "name is [$name]"
echo "surname is [$surname]"
print_obj obj
