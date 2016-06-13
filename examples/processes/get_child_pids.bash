#!/bin/bash -u

<<COMMENT

Showing how to wait for a specific process to end.

Example of how to collect your child process ids in bash
and monitor them.

COMMENT

echo "running sleep 5 in the background..."
sleep 5 &
PID5=$!
echo "the pid of 5 is $PID5..."
echo "running sleep 10 in the background..."
sleep 10 &
PID10=$!
echo "the pid of 10 is $PID10..."
let "x=20"
while [[ $x -gt 0 ]]; do
	sleep 1
	ps -p $PID5
done
