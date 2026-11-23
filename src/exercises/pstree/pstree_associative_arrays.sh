#!/bin/bash -eu

# this is the a rather efficient implementation of pstree
# in bash.
# - output of ps is directly pumped into a while loop which reads
# all the data into three arrays and then a call to a recursive
# function that uses no external processes.
# - ps is told to do the bare minium: output only the columns that
# we need (comm,pid,ppid) and no header line. -e is to show all
# processes.
# - "grep -v defunct" is used to suppress lines of defunct processes
# which have 4 components instead of 3.
# - notice the local definitions which are important in order for
# the recursion to work.

set -o pipefail

source src/includes/assoc.bashinc

ps -o comm,pid,ppid --no-headers -e | (
	declare -A pid_to_children
	declare -A pid_to_comm
	while read -r line
	do
		IFS=" " read -r -a arr <<< "${line}"
		comm=${arr[0]}
		pid=${arr[1]}
		ppid=${arr[2]}
		pid_to_comm[${pid}]=${comm}
		set +e
		assoc_key_exists pid_to_children "${ppid}"
		rc=$?
		set -e
		if [[ "${rc}" -ne 0 ]]
		then
			assoc_set pid_to_children "${ppid}" ""
		fi
		pid_to_children[${ppid}]="${pid_to_children[${ppid}]} ${pid}"
	done
	function print {
		local pid=$1
		local depth=$2
		local comm=${pid_to_comm[${pid}]}
		local width=$(( depth * 8 ))
		printf "%${width}s%s\n" "" "${comm}(${pid})"
		depth=$((depth+1))
		local rc
		set +e
		assoc_key_exists pid_to_children "${pid}"
		rc=$?
		set -e
		if [[ "${rc}" -ne 0 ]]
		then
			assoc_set pid_to_children "${pid}" ""
		fi
		local children=${pid_to_children[${pid}]}
		for x in ${children}
		do
			print "${x}" "${depth}"
		done
	}
	print 1 0
)
