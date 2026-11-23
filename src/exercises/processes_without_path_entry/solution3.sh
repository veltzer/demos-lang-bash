#!/bin/bash -eu

set -o pipefail

# part="$1"

ps -ef | tail +2 | tr -s " " | cut -f 2 -d " " | while IFS= read -r pid
do
	environ_file="/proc/${pid}/environ"
	while IFS= read -r -d $'\0' entry
	do
		if [[ ${entry} =~ ^PATH ]]
		then
			echo "entry is ${entry}"
			if [[ ${entry} =~ :/usr/bin: ]]
			then
				echo "${pid}"
			fi
		fi
	done 2> /dev/null < "${environ_file}" || true
done
