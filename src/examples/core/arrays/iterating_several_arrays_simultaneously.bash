#!/bin/bash -u

# This is an example of how to iterate several arrays
# simulteneously.
#
# References:
# - http://tldp.org/LDP/abs/html/arrays.html

array1=( "Vietnam" "Germany" "Argentina" )
array2=( "Asia" "Europe" "America" )

for ((i=0;i<${#array1[@]};++i))
do
	printf "%s is in %s\n" "${array1[i]}" "${array2[i]}"
done
