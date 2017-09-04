#!/bin/bash -u

# This example show basic object oriented programming using bash.
# This approach uses a rather standard way of implementing object
# oriented programming by having one associative array per object.
# The only issue with tihs approach is that we do not have
# unique id for each object. This prevents us from storing many
# of these objects in a container (bash list or associative
# array).
#
# This is a major fault with this approach.
#
# References:
# - http://hipersayanx.blogspot.co.il/2012/12/object-oriented-programming-in-bash.html
# - https://stackoverflow.com/questions/36771080/creating-classes-and-objects-using-bash-scripting
# - https://github.com/lenormf/bash-oop

source src/includes/assoc.bash

# the infrastructure

function new_object() {
	local __obj_name=$1
	eval "declare -gA $__obj_name=()"
}

function set_attr() {
	local __obj_name=$1
	local attr=$2
	local value=$3
	eval "$__obj_name['$attr']='$value'"
}

function get_attr() {
	local __var_name=$1
	local __obj_name=$2
	local attr=$3
	eval "$__var_name=\${$__obj_name['$attr']}"
}

new_object obj
set_attr obj name mark
set_attr obj surname veltzer
get_attr name obj name
get_attr surname obj surname
if [ "$name" != "mark" ]
then
	echo "ERROR"
fi
if [ "$surname" != "veltzer" ]
then
	echo "ERROR"
fi
assoc_print obj
assoc_len obj len
if [ "$len" != "2" ]
then
	echo "ERROR"
fi
