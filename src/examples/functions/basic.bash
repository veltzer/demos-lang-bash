#!/bin/bash -ue

# These are basic examples of functions in bash.
#
# NOTES:
# - all first three ways of defining a function below work equally well.
# - the fourth way which is sometimes used by some people actually
# launches the function in a subshell which has two implications:
# the function cannot change global variables in the context of the
# caller and the forking of a subshell is not efficient.

function func1 {
	echo "func1"
}

func2() {
	echo "func2"
}

function func3() {
	echo "func3"
}

function func4() (
	echo "func4"
)

func1
func2
func3
func4
