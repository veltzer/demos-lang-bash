#!/bin/bash -u

<<'COMMENT'

These are examples that intend to check what function
names work in bash.

NOTES:
- you can name functions "foo-bar"

COMMENT

function func-this {
	echo "hello"
}

func-this
