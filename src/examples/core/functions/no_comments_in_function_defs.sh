\#\!/bin/bash -eu

# This example shows that when you define a function in bash
# and then ask about it, you will not see the comments.

function function_with_comments() {
	# this is a comment
	echo "hello, world!"
	# this is another comment
}

type function_with_comments
