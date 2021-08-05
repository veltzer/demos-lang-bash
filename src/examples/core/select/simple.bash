#!/bin/bash -u

# This is an example of building a simple menu in bash using the
# 'select' statement.
# - you can use break to get out of the loop
# - vim has a highlighting problem with the 'select' statement.
#
# References:
# - https://bash.cyberciti.biz/guide/Select_loop
# - https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_06.html

select s in a b quit
do
	case $s in
		a)
			echo "you selected a";;
		b)
			echo "you selected b";;
		quit)
			echo "you selected quit"; break;;
		*)
			echo "please select a, b or quit";;
	esac
done
