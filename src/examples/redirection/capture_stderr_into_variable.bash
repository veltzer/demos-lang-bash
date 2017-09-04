#!/bin/bash -ue

# This is an example of how to capture the standard error
# References:
# - https://stackoverflow.com/questions/11087499/bash-how-do-you-capture-stderr-to-a-variable
# - https://stackoverflow.com/questions/3130375/bash-script-store-stderr-in-a-variable

# capture only the standard error of a process into a bash variable and throw stdout away
var="$(ls -l /yy /var 2>&1 >/dev/null)"
echo "var is [$var]"

# capture both stdout and stderr (they are interleaved)
var="$(ls -l /yy /var 2>&1)"
echo "var is [$var]"
