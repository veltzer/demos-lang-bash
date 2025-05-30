\#\!/bin/bash -eu

find /etc -maxdepth 2 -type f -readable -exec grep -l "backup" {} \; 2> /dev/null | xargs ls -l | tr -s " " | cut -f 5 -d " " > sizes.txt

sum=0
while read -r line
do
	let "sum=sum+line"
done < sizes.txt
echo "sum is $sum"
