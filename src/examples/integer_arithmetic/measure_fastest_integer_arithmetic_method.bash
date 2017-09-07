#!/bin/bash -ue

# There are several ways to do integer arithmetic in bash which are:
# let
# braces
# expr
# bc
#
# We compare them all here in terms of speed.


source src/includes/array.bashinc

function add_let() {
	local a=$1
	local b=$2
	local result
	let "result=$a+$b"
}

function add_braces() {
	local a=$1
	local b=$2
	local result
	result=$((a+b))
}

function add_expr() {
	local a=$1
	local b=$2
	local result
	result=$(expr $a + $b)
}

function add_bc() {
	local a=$1
	local b=$2
	local result
	result=$(echo $a + $b | bc)
}

source src/includes/var.bashinc
source src/includes/measure.bashinc

measure add_let
measure add_brace
measure add_expr
measure add_bc
