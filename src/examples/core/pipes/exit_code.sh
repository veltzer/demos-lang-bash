#!/bin/bash -eu
# splitting the comma-separated tuple by word splitting is the technique shown
# shellcheck disable=SC2206

# This is an example that shows that the exit code of a shell pipe
# is the exit code *of the last component* of the pipe.

# shellcheck disable=SC2312  # teaching: the exit status of a pipe is that of its last component, the masked earlier ones are the lesson
true | false
echo "01: $?"
# shellcheck disable=SC2312  # teaching: the exit status of a pipe is that of its last component, the masked earlier ones are the lesson
false | true
echo "10: $?"

for x1 in true,0 false,1
do
	x1s=(${x1//,/ })
	for x2 in true,0 false,1
	do
		x2s=(${x2//,/ })
		for x3 in true,0 false,1
		do
			x3s=(${x3//,/ })
			# shellcheck disable=SC2312  # teaching: the exit status of a pipe is that of its last component, the masked earlier ones are the lesson
			${x1s[0]} | ${x2s[0]} | ${x3s[0]}
			res=$?
			echo "${x1s[1]}${x2s[1]}${x3s[1]} -> ${res}"
		done
	done
done
