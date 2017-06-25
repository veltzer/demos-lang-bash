#!/bin/bash -u

<<'COMMENT'

This example shows how 'set -e' works in bash.
The effect is that any command that fails will cause the script to stop.

TODO:
- is there a way to catch 'set -e' errors at a higher level?

COMMENT

echo before
set -e
false
echo after
