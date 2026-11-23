#!/bin/bash -eu

set +e

echo "before bad"
# shellcheck source-path=SCRIPTDIR source=bad.bashinc
if source bad.bashinc
then
	echo "yes $?"
else
	echo "no $?"
fi
