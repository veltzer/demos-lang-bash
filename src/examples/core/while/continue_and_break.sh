\#\!/bin/bash -eu

# This example shows how to use 'continue' and 'break' in a bash 'while' loop.
#
# References:
# - http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_05.html

x=0
while true
do
	let "x=x+1"
	if [[ "$x" -eq 1000 ]]
	then
		break
	fi
	let "y=x%2"
	if [[ "$y" -eq 1 ]]
	then
		continue
	fi
	echo "$x"
done
