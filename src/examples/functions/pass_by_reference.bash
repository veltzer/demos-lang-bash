#!/bin/bash -u

# This example shows how to pass values by reference
# to bash functions
#
# There are several ways to pass arrays by reference
# to a bash function:
# - passing the name of the variable and using eval
# to assign to it.
# - passing the name of the variable and using local -n
# to receive it.
# method 2 sounds nicer.

source src/includes/array.bashinc

function using_eval() {
	local var1=$1
	local value=$2
	eval "$var1=$value"
}

function using_minus_n() {
	local -n var2=$1
	local value=$2
	var2=$value
}

function array_with_minus_n() {
	local -n var3=$1
	var3=(1 2 3)
}

a=5
using_eval a 6
if [ "$a" != 6 ]
then
	echo "ERROR 1"
fi

# show that this method has problem with same named variables
var=6
using_eval var 7
if [ "$var" != 6 ]
then
	echo "ERROR 2"
fi

a=7
using_minus_n a 8
if [ "$a" != 8 ]
then
	echo "ERROR 3"
fi

a=3
array_with_minus_n a
if ! array_is_array a
then
	echo "ERROR 4"
fi

my_array=9
using_minus_n my_array 10
if [ "$my_array" != 10 ]
then
	echo "ERROR 5"
fi
