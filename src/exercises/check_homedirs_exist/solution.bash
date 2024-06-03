#!/bin/bash -eu

grep ":/bin/bash$" /etc/passwd | cut -d : -f 6 | while read -r line
do
	if [ ! -d "${line}" ]
	then
		echo "problem with the folder ${line}"
	fi
done
