<<'COMMENT'

When you 'source' files in bash you sometimes want to stop the 'source' itself.
The trick is to use 'return' which cuts the 'source' short.
You can even use the value returned using the 'return' command. If you don't put
a value then you return 0 by default. You collect the returned value using '$?'.

COMMENT

echo "before the if"

return 3

echo "after the if"
