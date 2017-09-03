#!/bin/bash -u

# This example explores how to get a value from a hashmap
#
# NOTES:
# - this example shows that you can use a double quoted, single quoted
# or a non quoted key to get a value from a hashmap

# declare a hashmap
declare -A hashmap

# insert values into a hashmap
hashmap["key1"]="value1"
hashmap['key2']="value2"
hashmap[key3]="value3"

# get a single value out of a hashmap
val1=${hashmap["key1"]}
if [ "$val1" != "value1" ]
then
	echo "ERROR"
fi
val2=${hashmap['key2']}
if [ "$val2" != "value2" ]
then
	echo "ERROR"
fi
val3=${hashmap[key3]}
if [ "$val3" != "value3" ]
then
	echo "ERROR"
fi
