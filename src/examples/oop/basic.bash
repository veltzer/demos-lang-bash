#!/bin/bash -u

# This example show basic object oriented programming using bash.
#
# This is a work in progress

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
