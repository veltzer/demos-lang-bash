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
echo "${hashmap["key1"]}"
echo "${hashmap['key2']}"
echo "${hashmap[key3]}"
