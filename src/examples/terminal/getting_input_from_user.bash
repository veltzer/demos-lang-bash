#!/bin/bash -ue

# This is an example of how to get input from the user in bash.
# Notes:
# - the reason read works and can actually update your bash variable
# is because it is a shell builtin and not a command.
# References:
# - https://askubuntu.com/questions/446156/pause-execution-and-wait-for-user-input

read -p "What is your name: " name
echo "your name is $name"

read -n 1 -p "press any key" -s
