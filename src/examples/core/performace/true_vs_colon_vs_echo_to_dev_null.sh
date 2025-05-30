\#\!/bin/bash -eu

# This example tests who is faster: true, : or 'echo > /dev/null'

function func1() {
	for i in {0..1000000}
	do
		true
	done
}

function func2() {
	for i in {0..1000000}
	do
		:
	done
}

function func3() {
	for i in {0..1000000}
	do
		echo > /dev/null
	done
}

time func1
time func2
time func3
