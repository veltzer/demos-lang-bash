\#\!/bin/bash -eu

# This example examines if you can redirect via a varible.
# This means put "> [...]" and the like statements in a varialbe and
# use it in a line such as:
# $ ls $REDIRECT

# The result is that you cannot pass shell special notation (like redirection
# or the like) via variables.
# That is the reason for the difference in the output between the next two lines...

REDIRECT="> /dev/null"
ls $REDIRECT
ls > /dev/null # the output from this is not shown
# this does not help either
eval "ls $REDIRECT"
