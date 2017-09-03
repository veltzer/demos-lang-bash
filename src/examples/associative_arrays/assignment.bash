#!/bin/bash -u

# This example explores how to assign one associative array to another
# THIS EXAMPLE DOES NOT WORK.

source ../../includes/assoc.bash

# declare a hashmap
declare -A hashmap1

# insert values into a hashmap
hashmap1["key1"]="value1"
hashmap1["key2"]="value2"

declare -A hashmap2=${hashmap1[*]}

assoc_print hashmap1
assoc_print hashmap2
