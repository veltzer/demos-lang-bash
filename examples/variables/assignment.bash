#!/bin/bash -u

# example of bash assignment
# The conclusion is that you don't need to do:
# 	$ a="$b"
# as the quotes are redundant. This is true even if the variable
# 'b' contains spaces and the like.

a="one two"
b=$a
echo $b
