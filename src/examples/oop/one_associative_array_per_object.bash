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
# TODO:
# - add method to destroy object.
# - add method to remove attribute.
# - what about methods and inheritance?
#
# References:
# - http://hipersayanx.blogspot.co.il/2012/12/object-oriented-programming-in-bash.html
# - https://stackoverflow.com/questions/36771080/creating-classes-and-objects-using-bash-scripting
# - https://github.com/lenormf/bash-oop

source src/includes/assoc.bash

# the infrastructure

function oo_new() {
	local __obj_name=$1
	eval "declare -gA $__obj_name=()"
}

function oo_set_attr() {
	local __obj_name=$1
	local attr=$2
	local value=$3
	eval "$__obj_name['$attr']='$value'"
}

function oo_get_attr() {
	local __obj_name=$1
	local __var_name=$2
	local attr=$3
	eval "$__var_name=\${$__obj_name['$attr']}"
}

function oo_print() {
	local __obj_name=$1
	assoc_print "$__obj_name"
}

function oo_len() {
	local __obj_name=$1
	local __var_name=$2
	assoc_len "$__obj_name" "$__var_name"
}

oo_new obj
oo_set_attr obj name mark
oo_set_attr obj surname veltzer
oo_get_attr obj name name
if [ "$name" != "mark" ]
then
	echo "ERROR"
fi
oo_get_attr obj surname surname
if [ "$surname" != "veltzer" ]
then
	echo "ERROR"
fi
oo_print obj
oo_len obj len
if [ "$len" != "2" ]
then
	echo "ERROR"
fi
