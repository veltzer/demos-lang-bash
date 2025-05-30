\#\!/bin/bash -eu

# This is an example of how to check if a string starts with something
#
# References:
# - https://stackoverflow.com/questions/2172352/in-bash-how-can-i-check-if-a-string-begins-with-some-value

str='hello world'

# this solution is based on '[[' which is a shell builtin
if [[ "$str" == hello* ]]
then
	echo "yes"
fi

# this does not work
if [[ "$str" == "hello*" ]]
then
	echo "yes"
fi

# the best solution by regexp (bash3 and onwards)
if [[ "$str" =~ ^hello.* ]]
then
	echo "yes"
fi

# the best solution by regexp (bash3 and onwards)
if [[ "$str" =~ ^hello ]]
then
	echo "yes"
fi
