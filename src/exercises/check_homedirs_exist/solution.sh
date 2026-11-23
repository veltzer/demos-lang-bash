#!/bin/bash -eu

set -o pipefail

{ grep ":/bin/bash$" /etc/passwd || true; } | cut -d : -f 6 | while read -r line
do
	if [[ ! -d "${line}" ]]
	then
		echo "problem with the folder ${line}"
	fi
done
