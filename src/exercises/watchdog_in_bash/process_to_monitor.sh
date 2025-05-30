\#\!/bin/bash -eu

for x in 1 2 3 4 5
do
	echo "x is ${x}"
	sleep 1
done
# die abnormally
exit 7
