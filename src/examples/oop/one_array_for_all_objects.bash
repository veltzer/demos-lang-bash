#!/bin/bash -u

# This example show basic object oriented programming using bash.
# This approach uses just one hashmap for all attributes of all objects
# and each object is just a serial number.
#
# This is a work in progress
#
# References:
# - http://hipersayanx.blogspot.co.il/2012/12/object-oriented-programming-in-bash.html
# - https://stackoverflow.com/questions/36771080/creating-classes-and-objects-using-bash-scripting
# - https://github.com/lenormf/bash-oop

# the infrastructure

_object_count=0
declare -A _object_attrs=()

function new_object() {
	local __resultvar=$1
	local val=$_object_count
	let "_object_count++"
	eval $__resultvar="'$val'"
}

function set_attr() {
	local id=$1
	local attr=$2
	local value=$3
	_object_attrs["${id}.${attr}"]="$value"
}

function get_attr() {
	local id=$1
	local attr=$2
	echo "${_object_attrs["${id}.${attr}"]}"
}

function print_all() {
	for key in ${!_object_attrs[@]}
	do
		echo $key ${_object_attrs[$key]}
	done
}

# now for some OOP

# this is the 'constructor'
function Person() {
	local __resultvar=$1
	local name=$2
	local surname=$3
	new_object id
	set_attr $id name $name
	set_attr $id surname $surname
	eval $__resultvar="'$id'"
}

function get_name() {
	local id=$1
	get_attr $id name
}

function set_name() {
	local id=$1
	local name=$2
	set_attr $id name $name
}

function set_surname() {
	local id=$1
	local surname=$2
	set_attr $id surname $surname
}

function get_surname() {
	local id=$1
	get_attr $id surname
}

Person p1 "mark" "veltzer"
Person p2 "linus" "torvalds"
# declare | grep _object
get_name $p1
get_surname $p1
get_name $p2
get_surname $p2
set_name $p1 "doron"
get_name $p1
print_all
