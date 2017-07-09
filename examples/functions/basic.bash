#!/bin/bash -u

# These are basic examples of functions in bash.
# NOTES:
# - all three ways of defining a function below work equally well.

function func1 {
	echo "func1"
}

func2() {
	echo "func2"
}

function func3() {
	echo "func3"
}

func1
func2
func3
