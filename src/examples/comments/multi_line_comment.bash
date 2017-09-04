#!/bin/bash -ue

# This is an example of how to do multi line comments in bash.
# The result? the <<'FOO'... FOO idiom seems to be the best.
# References:
# - http://www.cyberciti.biz/faq/bash-comment-out-multiple-line-code/
# - https://unix.stackexchange.com/questions/37411/multiline-shell-script-comments-how-does-this-work

false

<<COMMENT

- evaluates the content of the comment (bad)
$$foo is fine, not because it is not evaluated but rather because
$$ is seen as the variable (current shell pid).
- it will allow single quotes (') (good)
- you can continue the comment until COMMENT appears (good)
- chages $? (bad)

$$foo (single $ will cause an error, bad)
${a=5} (evaluated, bad)

COMMENT

echo $a, $?

false

: '

- wont evaluate the content of the comment (good)
- cannot use single quotes (bad)
- the comment continues until a single quote (bad)
- chages $? (bad)

$foo (no error, good)
${a=6} (not evaluated, good)

'
echo $a, $?

false

: <<'COMMENT'

- wont evaluate the content of the comment (good)
- it will allow single quotes (') (good)
- you can continue the comment until COMMENT appears (good)
- chages $? (bad)

$foo (no error, good)
${a=7} (not evaluated, good)

COMMENT

echo $a, $?

false

<<'COMMENT'

- wont evaluate the content of the comment (good)
- it will allow single quotes (') (good)
- you can continue the comment until COMMENT appears (good)
- chages $? (bad)

$foo (no error, good)
${a=8} (not evaluated, good)

COMMENT

echo $a, $?

false

# this is a multi line comment the old style
# wont evaluate the content of the comment (good)
# it will allow single quotes (') (good)
# you need to repeat the # syntax on every line (bad)
# does not change $? (good)
#
# $foo (no error, good)
# ${a=8} (not evaluated, good)

echo $a, $?
