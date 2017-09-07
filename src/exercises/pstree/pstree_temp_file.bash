#!/bin/bash -ue

# TODO:
# 1. stop using a temp file
# 2. stop using wc -l and use a flag instead for end of file
# 3. add a PID_TO_CHILDREN structure to give fast access to children
# of a pid.

filename=/tmp/out.txt

# -e is for all processes
# --no-headers is to avoid the pesty first line
# -o user,pid,ppid,comm is to only show stuff we need
# user is there to make sure that we always have 4 columns
# bacause brain dead ps does not have a clear option not to align
# columns and we need consistency for tr
ps -e --no-headers -o pid,ppid,comm > $filename

# note that we get the number of lines from the $filename file
# and do not run ps(1) again to avoid consistency problems
numlines=`wc -l $filename | cut -d " " -f 1`

# save the old file descriptor
exec 3>&0
exec 0< $filename

PID_TO_NAME=()
PID_TO_PPID=()
INDEX_TO_PID=()
let "pidnum=0"
while [[ $pidnum -lt $numlines ]]
do
	read line
	fields=($line)
	pid=${fields[0]}
	ppid=${fields[1]}
	name=${fields[2]}
	PID_TO_NAME[$pid]=$name
	PID_TO_PPID[$pid]=$ppid
	INDEX_TO_PID[$pidnum]=$pid
	let "pidnum=pidnum+1"
done
# restore the file descriptor
exec 0>&3 
rm -f $filename

function print_proc {
	local num=$1
	local offset=$2
	# get the name of the process
	local name=${PID_TO_NAME[$num]}
	# print it and increase the offset
	local counter
	echo "$offset$name"
	offset="  "$offset
	counter=0
	while [[ $counter -lt $pidnum ]]
	do
		local cpid=${INDEX_TO_PID[$counter]}
		local ppid=${PID_TO_PPID[$cpid]}
		if [[ $ppid -eq $num ]] 
		then
			print_proc $cpid "$offset"
		fi
		let "counter++"
	done
}

print_proc 1 ""
