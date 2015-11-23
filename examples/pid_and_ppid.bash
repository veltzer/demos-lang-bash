#!/bin/bash -u

<<COMMENT

This example shows how to find your own pid and ppid
from within a bash script.

References:
- http://www.linuxquestions.org/questions/programming-9/find-parent-pid-in-shell-script-526384/

COMMENT

echo "\$\$ is $$"
echo "\$PPID is $PPID"
