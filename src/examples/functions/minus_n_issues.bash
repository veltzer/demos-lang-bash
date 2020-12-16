#!/bin/bash -u

# This example shows when using "local -n" can cause issues
# The solution? use a rare variable name (starts with underscore?) for
# local -n variable names.
#
# References:
# - http://mywiki.wooledge.org/BashFAQ/048#line-120

function func() {
	local -n var=$1
	local value=$2
	var=$2
}

foo=5
func foo 7
echo "foo is $foo"

var=5
func var 7
echo "var is $var"
