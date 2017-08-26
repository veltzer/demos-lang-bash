#!/bin/bash -u

# This example show basic object oriented programming using bash.
#
# This is a work in progress
#
# References:
# - http://hipersayanx.blogspot.co.il/2012/12/object-oriented-programming-in-bash.html
# - https://stackoverflow.com/questions/36771080/creating-classes-and-objects-using-bash-scripting

# this is the 'constructor'
function Person() {
	declare -xA "$1"
	declare -xA p
	# ${1}["name"]=$2
	# ${1}["surname"]=$3
}

Person p "mark" "veltzer"
declare -A | grep p
declare -A p
