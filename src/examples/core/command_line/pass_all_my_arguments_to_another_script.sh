\#\!/bin/bash -eu

# this is an example of getting specific arguments from the command line.

if [[ $# -lt 1 ]]
then
	echo "usage: script [must_pass] [optionals...]"
	exit 1
fi
must_pass_param=$1
echo "must_pass_param is $must_pass_param"
shift
./count_them.bash "$@"
