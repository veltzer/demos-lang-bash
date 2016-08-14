<<'COMMENT'

When you 'source' files in bash you sometimes want to stop the 'source' itself.
The trick is to use 'return' which cuts the 'source' short.

COMMENT

echo "before the if"

if [ "$HOSTNAME" != nochance ]; then
	echo "in the if"
	return
fi

echo "after the if"
