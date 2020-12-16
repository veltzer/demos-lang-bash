#!/bin/bash -u

function create_array_local() {
	local __var=$1
	declare -ga $__var
}

function create_array_eval() {
	local __var=$1
	eval "declare -ga $__var"
}

function add_element() {
	# cannot put -a on the next like or I will get this error:
	# reference variable cannot be an array
	local -n __arr=$1
	__arr+=(4)
}

create_array_local arr1
declare -p arr1
create_array_eval arr2
declare -p arr2
f=(1 2 3)
echo ${f[*]}
add_element f 4
echo ${f[*]}
