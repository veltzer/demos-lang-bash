#!/bin/bash -ue

# There are several ways to do integer arithmetic in bash which are:
# - braces
# - let
# - expr
# - bc
#
# We compare them all here in terms of speed.
#
# Results:
# the order above is the order of speed.
# It turns out that double brances does not invoke a subshell and
# doesn't need to parse anything.
# Next is let has to parse things but still without subshell.
# expr is already doing subshell so it's slower than the first
# two methods. It also does not need to do parsing or redirection
# which makes it faster than 'bc' which is in fourth place.
# 'bc' is subshell, needs parsing, complicated, and needs piping
# which makes it the slowest.

source src/includes/array.bashinc
source src/includes/var.bashinc
source src/includes/measure.bashinc

function add_braces() {
	local a=$1
	local b=$2
	local result
	result=$((a+b))
}

function add_let() {
	local a=$1
	local b=$2
	local result
	let "result=$a+$b"
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

# lets measure
count=1000
function many_wrap() {
	local function_name=$1
	for (( i=0; i<$count; i++ ))
	do
		"${function_name}" 2 2
	done
}

measure diff_braces many_wrap add_braces
measure diff_let many_wrap add_let
measure diff_expr many_wrap add_expr
measure diff_bc many_wrap add_bc
echo "diff_braces is [$diff_braces]"
echo "diff_let is [$diff_let]"
echo "diff_expr is [$diff_expr]"
echo "diff_bc is [$diff_bc]"
