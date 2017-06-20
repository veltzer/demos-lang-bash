#!/bin/bash -u

<<'COMMENT'

This example shows how to do logical operators on the return
values of processes.

In order to do this we will use two shell built-ins: 'true' and 'false'.
'true' returns 0 as exit status.
'false' returns 1 as exit status.
They are small, shell-builtins, that behave like processes.
Remember that 0 in shell means true and any other value
means false.

COMMENT

if true && true; then
	echo "true && true"
fi
if true && false; then
	echo "true && false"
fi
if false && true; then
	echo "false && true"
fi
if false && false; then
	echo "false && false"
fi
if true || true; then
	echo "true || true"
fi
if true || false; then
	echo "true || false"
fi
if false || true; then
	echo "false || true"
fi
if false || false; then
	echo "false || false"
fi
