#!/bin/bash -u

# This example explores how to assign one associative array to another

# declare a hashmap
declare -A hashmap1

# insert values into a hashmap
hashmap1["key1"]="value1"
hashmap1["key2"]="value2"

declare -A hashmap2=${hashmap1[*]}

# iterate all keys and values
for key in ${!hashmap1[@]}
do
	echo $key ${hashmap1[$key]}
done
for key in ${!hashmap2[@]}
do
	echo $key ${hashmap2[$key]}
done
