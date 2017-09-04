#!/bin/bash -ue

# This example shows how to loop over a range of integers in ascending
# or descending order, with step of 1 or other step size.
# NOTES:
# - for i in {$min..$max} when 'min' and 'max' are variables does not work.
# you can use seq(1) instead (see below).

# forward
for j in {1..3}
do
	echo $j
done

# backwards
for j in {3..1}
do
	echo $j
done

# negative values forward
for j in {-3..-1}
do
	echo $j
done

# negative values backwards
for j in {-1..-3}
do
	echo $j
done

# you can also have a jump interval
for j in {1..7..2}
do
	echo $j
done

for j in {7..1..-2}
do
	echo $j
done

# with variables
min=3
max=7
for i in $(seq $min $max)
do
	echo $i
done
