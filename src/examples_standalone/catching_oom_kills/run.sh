\#\!/bin/bash -eu

./my_proc.py &
pid=$!

if wait $pid
then
	echo "It exited successfully"
else
	code=$?
	echo "It exited with failure ($?)"
	tail -5 /var/log/syslog
fi
