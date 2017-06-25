#!/bin/bash -u

<<'COMMENT'

This is an example of basic integer arithmetic in the shell using the 'let' shell builtin.

NOTES:
- You can use the 'let' shell builtin in functions too.
- You can find documentation about the 'let' shell builtin in 'man builtins'.

COMMENT

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
	let "x=0"
	echo $x
	let "x=x+1"
	echo $x
}

foo
