#!/bin/bash -u

# This is an example of how use single quotes to escape the shell.
# Things to remember:
# - when you surround a part of your command line with single quotes that part
# of the command line is going to be passed as ONE argument to the program activated.
# - environment and shell variables which are mentioned inside the double quoted are
# ARE NOT going to be interpolated.

# This is passed as one argument
echo 'Hello, World!'
# No interpolation
echo 'HOME is $HOME'
echo 'HOME is ${HOME}'
# Backslashes for escapring are just printed...
echo 'HOME is \$HOME'
echo 'HOME is \${HOME}'
