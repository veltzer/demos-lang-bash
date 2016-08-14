#!/bin/bash -u

<<'COMMENT'

basic bash variable usage

COMMENT

somevar=7
echo $somevar
# the next line will create an error since only "this" will be inserted
# into the 'othervar' variable and the command 'is a var' will be attemted (and failed).
#othervar=this is a var
# this is the correct way...
othervar="this is a var"
echo $othervar
