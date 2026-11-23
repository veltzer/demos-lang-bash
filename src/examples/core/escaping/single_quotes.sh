#!/bin/bash -eu

# This is an example of how use single quotes to escape the shell.
# Things to remember:
# - when you surround a part of your command line with single quotes that part
# of the command line is going to be passed as ONE argument to the program activated.
# - environment and shell variables which are mentioned inside the double quoted are
# ARE NOT going to be interpolated.
#
# References:
# - https://www.shellscript.sh/escape.html

# This is passed as one argument
echo 'Hello, World!'
# No interpolation
# shellcheck disable=SC2016  # teaching: single quotes not expanding $ is the point of this example
echo 'HOME is $HOME'
# shellcheck disable=SC2016  # teaching: single quotes not expanding $ is the point of this example
echo 'HOME is ${HOME}'
# Backslashes for escapring are just printed...
# shellcheck disable=SC2016  # teaching: single quotes not expanding $ is the point of this example
echo 'HOME is \$HOME'
# shellcheck disable=SC2016  # teaching: single quotes not expanding $ is the point of this example
echo 'HOME is \${HOME}'
