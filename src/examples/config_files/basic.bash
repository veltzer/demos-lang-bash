#!/bin/bash -ue

# This is a basic example of how to work with config files in bash
# using an associative array.

source src/includes/assoc.bashinc

# create a new config object (this is actually an associative array)
assoc_create config
# read a file into the config object (ini style)
assoc_config_read config "data/config.ini"
# read another file into the config object stepping over values (ini style)
assoc_config_read config "data/more.ini"
# print all the files
assoc_print config
# get a single config file which is in the config
assoc_get val config "one"
echo "val is [$val]"
# get a single config file which is not in the config
assoc_get val config "nonexist"
echo "val is [$val]"
