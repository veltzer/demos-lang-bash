\#\!/bin/bash -eu

# This is an example of how to use whiptail(1) to show dialogs
# from bash scripts
# References:
# - https://pseudoscripter.wordpress.com/2012/10/16/whiptail-using-a-menu/

result=$(whiptail --menu "title of menu" 15 50 5 1 a 2 b 3 c 3>&2 2>&1 1>&3)
code=$?
if [ $code -eq 0 ]
then
	echo "you chose [$result]"
else
	echo "there was an error running dialog"
fi
