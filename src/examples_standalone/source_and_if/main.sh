#!/bin/bash -eu
# this example is about sourcing itself: the paths are dynamic or relative
# by design, so shellcheck cannot follow them
# shellcheck disable=SC1090,SC1091

set +e

echo "before bad"
if source bad.bashinc
then
	echo "yes $?"
else
	echo "no $?"
fi
