#!/bin/bash -u

<<'COMMENT'

This example shows how to collect output of processes in bash.

Basically there are two ways: backticks and $().

COMMENT

x=$(date)
y=`date`
echo "x is $x"
echo "y is $y"
