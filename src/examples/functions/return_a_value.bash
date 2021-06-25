#!/bin/bash -u

# These examples show how to return a value from a bash function
#
# NOTES:
# - return is a shell builtin and only accepts numerical arguments.
# - so return changes $? and not the return value as we see.
# - this means that return should be used for errors and not for
# return values.
# - while echo (which is also a builtin) should be used for values.
# - echo does not change $?
# - running a subshell is slow so it's better to use a method which
# does not employ a subshell.
#
# References:
# - http://www.linuxjournal.com/content/return-values-bash-functions

function return_via_echo {
	echo hello
}

function return_via_return {
	return 0
}

function return_no_args {
	:
	return
}

function return_via_var() {
	var=5
	return
}

function return_via_user_var() {
	# always call the variable a name which is rare
	local __user_var=$1
	local value=$2
	eval "$__user_var=$2"
}

function return_via_user_var_local() {
	local -n var=$1
	local value=$2
	var=$value
}


echo "now via echo"
A=$(return_via_echo)
echo "\$? is [$?]"
echo "return value is [$A]"

echo "now via return"
A=$(return_via_return)
echo "\$? is [$?]"
echo "return value is [$A]"

echo "now via return with no args"
A=$(return_no_args)
echo "\$? is [$?]"
echo "return value is [$A]"

echo "now via return via var"
return_via_var
echo "var is $var"

echo "now via return via var but in a subshell"
# shellcheck disable=SC2091
$(return_via_var)
if [ -z "$var" ]
then
	echo "yes, var is undefined" 
fi

echo "now via return via user var without subshell"
return_via_user_var foo value
# shellcheck disable=SC2154
if [ "$foo" != "value" ]
then
	echo "error, return value is wrong"
else
	echo "yes, all is OK"
fi

echo "now via return via user var without subshell with local -n"
return_via_user_var_local bar value
# shellcheck disable=SC2154
if [ "$bar" != "value" ]
then
	echo "error, return value is wrong"
else
	echo "yes, all is OK"
fi
