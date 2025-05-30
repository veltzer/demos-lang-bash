\#\!/bin/bash -eu

# This example investigates whether local variables in bash are really local
# The result? YES IT IS.
# It even withstands references to the same name.

function func_c() {
	local -n var=$1
	var=8
}

function func_b() {
	local x
	x=7
	echo "before func_c $x"
	func_c x
	echo "after func_c $x"
}

function func_a() {
	local x
	x=5
	echo "before func_b $x"
	func_b
	echo "after func_b $x"
}

x=13
echo "before func_b $x"
func_a
echo "after func_b $x"
