\#\!/bin/bash -eu

# This is an example of how to iterate properly all the command line arguments.
# You can test this by giving arguments of like this:
# $ ./command_line.bash arg1 arg2 "this is the third arg"
# and seeing that the script packs all the third argument correctly.
# in bash, unlike in other scripting languages, the first argument is a real
# argument and NOT the name of the script.
#
# References:
# - https://stackoverflow.com/questions/255898/how-to-iterate-over-arguments-in-a-bash-script

# the right way to iterate an array
for elem in "$@"
do
	echo $elem
done
echo "size of the array is $#"
