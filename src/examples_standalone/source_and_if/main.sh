#!/bin/bash -u

set +e

echo "before bad"
if source bad.bashinc
then
	echo "yes $?"
else
	echo "no $?"
fi
