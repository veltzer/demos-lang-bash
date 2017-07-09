#!/bin/bash -u

# This is a basic example of how to create a dialog in bash using
# the dialog(1) tool and get the users response into a bash
# variable.
# Notes:
# - by defautl dialog(1) writes the users selection to standard error
# which makes it hard to capture ($(...) captures standard output in
# bash). But luckily we have the --output-fd option to dialog(1).
# - while dialog(1) is running, if you press ESC or use the "Cancel"
# option which is available in many of the dialogs, then you will get
# a "1" return value from dialog(1). Use that to distinguish between
# valid output by the user and a user which does not want to answer.
# References:
# - https://askubuntu.com/questions/491509/how-to-get-dialog-box-input-directed-to-a-variable

result=$(dialog --menu "title of menu" 15 50 5 1 a 2 b 3 c --output-fd 1)
code=$?
if [ $code -eq 0 ]
then
	echo "you chose [$result]"
else
	echo "there was an error running dialog"
fi
