#!/bin/bash -u

# This example shows how to iterate an array in bash.
#
# Results:
# The first way
#	$ for elem in "${array[@]}"
# is the only right way to do it.
#
# References:
# - https://www.cyberciti.biz/faq/bash-iterate-array/

# lets define an array
z=(
"one two"
"five six"
"three four"
)

echo 'for elem in "${z[@]}"'
i=0
for elem in "${z[@]}"
do
	if [ "$i" -ge "${#z[@]}" ]
	then
		echo -e "\tERROR inedx too large [$i] [${#z[@]}] [$elem]"
		((i++))
		continue
	fi
	if [ "$elem" != "${z[$i]}" ]
	then
		echo -e "\tERROR [$elem] != [${z[$i]}]"
	fi
	((i++))
done
if [ "$i" -ne 3 ]
then
	echo -e "\tERROR number of elements $i != 3"
fi

echo 'for elem in ${z[@]}'
i=0
for elem in ${z[@]}
do
	if [ "$i" -ge "${#z[@]}" ]
	then
		echo -e "\tERROR inedx too large [$i] [${#z[@]}] [$elem]"
		((i++))
		continue
	fi
	if [ "$elem" != "${z[$i]}" ]
	then
		echo -e "\tERROR [$elem] != [${z[$i]}]"
	fi
	((i++))
done
if [ "$i" -ne 3 ]
then
	echo -e "\tERROR number of elements $i != 3"
fi

echo 'for elem in "${z[*]}"'
i=0
for elem in "${z[*]}"
do
	if [ "$i" -ge "${#z[@]}" ]
	then
		echo -e "\tERROR inedx too large [$i] [${#z[@]}] [$elem]"
		((i++))
		continue
	fi
	if [ "$elem" != "${z[$i]}" ]
	then
		echo -e "\tERROR [$elem] != [${z[$i]}]"
	fi
	((i++))
done
if [ "$i" -ne 3 ]
then
	echo -e "\tERROR number of elements $i != 3"
fi

echo 'for elem in "$z"'
i=0
for elem in "$z"
do
	if [ "$i" -ge "${#z[@]}" ]
	then
		echo -e "\tERROR inedx too large [$i] [${#z[@]}] [$elem]"
		((i++))
		continue
	fi
	if [ "$elem" != "${z[$i]}" ]
	then
		echo -e "\tERROR [$elem] != [${z[$i]}]"
	fi
	((i++))
done
if [ "$i" -ne 3 ]
then
	echo -e "\tERROR number of elements $i != 3"
fi

echo 'for elem in $z'
i=0
for elem in $z
do
	if [ "$i" -ge "${#z[@]}" ]
	then
		echo -e "\tERROR inedx too large [$i] [${#z[@]}] [$elem]"
		((i++))
		continue
	fi
	if [ "$elem" != "${z[$i]}" ]
	then
		echo -e "\tERROR [$elem] != [${z[$i]}]"
	fi
	((i++))
done
if [ "$i" -ne 3 ]
then
	echo -e "\tERROR number of elements $i != 3"
fi
