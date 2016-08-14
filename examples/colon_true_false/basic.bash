#!/bin/bash -u

<<'COMMENT'

This example shows that ':' is an actual command (builtin) which accepts arguments,
does nothing and changes '$?' to '0'.
This is very similar to 'true' (which is also a builtin).
'false' is similar except '$?' is changed to '1'.

Diffences between '#' and ':'
- '#' does not change '$?' while ':' does change '$?' to '0'.
- '#' cannot be followed by another command on the same line with ';' while ':' can.

COMMENT

false
: bla bla bla
echo $?

true
: bla bla bla
echo $?

false
# bla bla bla
echo $?
