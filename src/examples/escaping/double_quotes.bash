#!/bin/bash -u

# This is an example of how use double quotes to escape the shell.
# Things to remember:
# - when you surround a part of your command line with double quotes that part
# of the command line is going to be passed as ONE argument to the program activated.
# - environment and shell variables which are mentioned inside the double quoted are
# ARE going to be interpolated.
# - if you want these variables not to be interpolated, put a backslash before the '$'
# sign

# This is passed as one argument
echo "Hello, World!"
# Intepolation
echo "HOME is $HOME"
echo "HOME is ${HOME}"
# No interpolation
echo "HOME is \$HOME"
echo "HOME is \${HOME}"
