#!/bin/bash -eu

i=$#
while test $i -ge 0
do
	echo "${!i}"
	((i=i-1))
done
