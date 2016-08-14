#!/bin/bash

<<'COMMENT'

This example shows how to use booleans in bash

COMMENT

val=false
if $val; then
	echo "val is true"
else
	echo "val is false"
fi
