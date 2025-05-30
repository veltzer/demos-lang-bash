\#\!/bin/bash -eu

while true
do
	echo "running the monitored process..."
	set +e
	./process_to_monitor.sh
	return_code=$?
	set -e
	if [ ${return_code} != 0 ]
	then
		echo "the child failed with exit code ${return_code}..."
	fi
done
