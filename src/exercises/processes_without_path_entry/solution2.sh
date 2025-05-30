\#\!/bin/bash -eu

# part="$1"

ps -e -o pid --no-header | while IFS= read -r line
do
	echo "$line"
done
