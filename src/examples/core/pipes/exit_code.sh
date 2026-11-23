#!/bin/bash -eu

# This is an example that shows that the exit code of a shell pipe
# is the exit code *of the last component* of the pipe.

rc=0
# shellcheck disable=SC2312  # teaching: the exit status of a pipe is that of its last component, the masked earlier ones are the lesson
true | false || rc=$?
echo "01: ${rc}"
rc=0
# shellcheck disable=SC2312  # teaching: the exit status of a pipe is that of its last component, the masked earlier ones are the lesson
false | true || rc=$?
echo "10: ${rc}"

for x1 in true,0 false,1
do
	IFS=, read -r -a x1s <<< "${x1}"
	for x2 in true,0 false,1
	do
		IFS=, read -r -a x2s <<< "${x2}"
		for x3 in true,0 false,1
		do
			IFS=, read -r -a x3s <<< "${x3}"
			res=0
			# shellcheck disable=SC2312  # teaching: the exit status of a pipe is that of its last component, the masked earlier ones are the lesson
			${x1s[0]} | ${x2s[0]} | ${x3s[0]} || res=$?
			echo "${x1s[1]}${x2s[1]}${x3s[1]} -> ${res}"
		done
	done
done
