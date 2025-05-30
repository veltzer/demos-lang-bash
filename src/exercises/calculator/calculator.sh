\#\!/bin/bash -eu

# run this with arguments as expression always

(( result=$* ))
echo "result is $result"
