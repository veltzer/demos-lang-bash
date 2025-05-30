#!/bin/bash -u

# This is an example of basic integer arithmetic in the shell using the 'let' shell builtin.
#
# NOTES:
# - You can use the 'let' shell builtin in functions too.
# - If you want to use 'let' in bash functions then take care to declare
# the variable you are using as local as best practices dictate.
# - You can find documentation about the 'let' shell builtin in 'man builtins'.
# - the problem with 'let' is that it can only do integer arithmetic.
#
# References:
# - https://ryanstutorials.net/bash-scripting-tutorial/bash-arithmetic.php

let "x=0"
echo $x
let "x=x+1"
echo $x
let "x+=1"
echo $x
# yes, the bash has ++
let "x++"
echo $x

function foo() {
	local y
	let "y=0"
	echo $x
	let "y=y+1"
	echo $x
}

foo
echo $y
