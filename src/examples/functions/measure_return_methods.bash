#!/bin/bash -ue

# There are several ways to return values from a bash function:
# - echo the value and let the caller capture it using backticks
# like so g=`foo` or with the dollar operator like so g=$(foo).
# - accept the name of a variable (this is bashs' way of passing
# a variable by reference) and have the called function assign
# that variable.
# - return the value via the 'return' keyword and the caller will
# pick up the value via the $? variable.
# - return the value via an agreed upon global variable. The caller
# and the called function agree on the name of the variable.
# - have a global return value stack. Each function will push its
# return onto the stack. The calling function will pop that value
# off.
#
# Methods (3) and (4) are rejected.
# (3) can only return integers.
# (4) no recursion, globals are ugly.
# Option (5) may be the key to Nirvana. We will examine in a
# different script. Method (5) is also problematic because
# the two methods must be in the same shell (the called method
# may not run in a subshell).
#
# This script compares methods (1) and (2)
# method (1) is supposed to be much slower because both backticks
# and the dollar operator launch a subshell (fork) and the called
# function runs in that subshell. This also means that the called
# function cannot return values using the stack and must resort
# to either echo or return which still work.
#
# Conclusions:
# indeed launching a subshell is horrible and its much better to
# return values via the variable by reference method.
# note that this method has it's drawbacks too.

source src/includes/array.bashinc
source src/includes/var.bashinc
source src/includes/measure.bashinc

function add_echo() {
	local a=$1
	local b=$2
	local result
	let "result=$a+$b"
	echo $result
}

function add_ref() {
	local __user_var=$1
	local a=$2
	local b=$3
	local result
	let "result=$a+$b"
	eval "$__user_var=$result"
}

array_new __return_values

function add_stack() {
	local a=$1
	local b=$2
	local result
	let "result=$a+$b"
	array_push __return_values $result
}

# lets see if all is well
c=$(add_echo 2 2)
if [ "$c" != "4" ]
then
	echo "ERROR"
fi
add_ref d 2 2
if [ "$d" != "4" ]
then
	echo "ERROR"
fi
add_stack 2 2
array_pop __return_values e
if [ "$e" != "4" ]
then
	echo "ERROR"
fi

# lets measure
count=1000
function wrap_echo() {
	for (( i=0; i<$count; i++ ))
	do
		c=$(add_echo 2 2)
	done
}
function wrap_ref() {
	for (( i=0; i<$count; i++ ))
	do
		add_ref d 2 2
	done
}
function wrap_stack() {
	for (( i=0; i<$count; i++ ))
	do
		add_stack 2 2
		array_pop __return_values e
	done
}

measure diff_echo wrap_echo 4
measure diff_ref wrap_ref 4
measure diff_stack wrap_stack 4
echo "diff_echo is [$diff_echo]"
echo "diff_ref is [$diff_ref]"
echo "diff_stack is [$diff_stack]"
