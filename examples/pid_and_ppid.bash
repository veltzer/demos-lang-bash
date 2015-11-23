#!/bin/bash -u

<<COMMENT

This example shows how to find your own pid and ppid
from within a bash script.

COMMENT

echo "\$\$ is $$"
echo "\$PPID is $PPID"
