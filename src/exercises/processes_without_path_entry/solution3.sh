\#\!/bin/bash -eu

# part="$1"

ps -ef | tail +2 | tr -s " " | cut -f 2 -d " " | while IFS= read -r pid
do
	environ_file="/proc/$pid/environ"
	cat $environ_file 2> /dev/null | while IFS= read -r -d $'\0' entry
	do
		if [[ $entry =~ ^PATH ]]
		then
			echo "entry is $entry"
			if [[ $entry =~ :/usr/bin: ]]
			then
				echo $pid
			fi
		fi
	done 2> /dev/null
done
