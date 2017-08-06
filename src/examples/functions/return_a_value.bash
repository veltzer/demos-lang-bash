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

function return_via_echo {
	echo hello
}

function return_via_return {
	return hello
}

function return_no_args {
	foobar 2>/dev/null
	return
}

function return_via_var() {
	var=5
	return
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
