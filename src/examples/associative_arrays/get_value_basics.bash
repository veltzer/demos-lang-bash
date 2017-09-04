#!/bin/bash -ue

# This example explores how to get a value from a hashmap
#
# NOTES:
# - this example shows that you can use a double quoted, single quoted
# or a non quoted key to get a value from a hashmap and to assign
# values to a hashmap.

# declare a hashmap
declare -A hashmap

# insert values into a hashmap
hashmap["ke y1"]="val ue1"
hashmap['ke y2']="val ue2"
hashmap[ke y3]="val ue3"

# get a single value out of a hashmap
val1=${hashmap["ke y1"]}
if [ "$val1" != "val ue1" ]
then
	echo "ERROR"
fi
val2=${hashmap['ke y2']}
if [ "$val2" != "val ue2" ]
then
	echo "ERROR"
fi
val3=${hashmap[ke y3]}
if [ "$val3" != "val ue3" ]
then
	echo "ERROR"
fi
