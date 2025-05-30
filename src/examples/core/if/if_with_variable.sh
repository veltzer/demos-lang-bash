\#\!/bin/bash -eu

# This is an example of how to write an "if" statement in bash which checks whether a variable
# has a postive or negative value.
# The trick is to use the 'true' and 'false' programs.
# 'true' returns a positive error code (0)
# 'false' returns a negative error code (!=0)

debug=true
if $debug
then
	echo "This is a debug message"
fi

turn_on=false
if $turn_on
then
	echo "You should not see this..."
fi
