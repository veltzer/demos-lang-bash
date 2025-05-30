\#\!/bin/bash -eu

# this is an example of getting a specific number of arguments from the command line.
# References:
# - https://stackoverflow.com/questions/18568706/check-number-of-arguments-passed-to-a-bash-script

if [[ "$#" -ne 2 ]]
then
	echo "you must pass exactly two arguments to this script..."
	exit 1
fi
	echo "you must pass exactly two arguments to this script..."

if [ "$#" -ne 2 ]
then
	echo "you must pass exactly two arguments to this script..."
	exit 1
fi
echo "the number of arguments is [$#]"
echo "the name of the script is [$0]"
echo "first argument is [$1]"
echo "second argument is [$2]"
