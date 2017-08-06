#!/bin/bash

# This example shows how to use booleans in bash

val=false
if $val
then
	echo "val is true"
else
	echo "val is false"
fi
val=true
if $val
then
	echo "val is true"
else
	echo "val is false"
fi
val=false
if ( ! $val )
then
	echo "val is false"
else
	echo "val is true"
fi
a=true
b=false
if [ $a = true -a $b = true ]
then
	echo "a -a b is true"
else
	echo "a -a b is false"
fi
if [ $a = true -o $b = true ]
then
	echo "a -o b is true"
else
	echo "a -o b is false"
fi
