#!/bin/bash -u

<<'COMMENT'

These are examples that intend to check what function
names work in bash.

NOTES:
- you can use minus in the names of functions

COMMENT

function func-this {
	echo "hello"
}

func-this
