#!/bin/bash -u

<<'COMMENT'

This is an example of how to do multi line comments in bash.

The result? the <<'FOO'... FOO idiom seems to be the best.

References:
http://www.cyberciti.biz/faq/bash-comment-out-multiple-line-code/

COMMENT

<<COMMENT

- evaluates the content of the comment (bad)
$$foo is fine, not because it is not evaluated but rather because
$$ is seen as the variable (current shell pid).
- it will allow single quotes (') (good)
- you can continue the comment until COMMENT appears (good)

$$foo (single $ will cause an error)
${a=5} (evaluated)

COMMENT

echo $a

: '

- wont evaluate the content of the comment (good)
- cannot use single quotes (bad)
- the comment continues until a single quote (bad)

$foo (no error)
${a=6} (not evaluated)

'
echo $a

: <<'COMMENT'

- wont evaluate the content of the comment (good)
- it will allow single quotes (') (good)
- you can continue the comment until COMMENT appears (good)

$foo (no error)
${a=7} (not evaluated)

COMMENT

echo $a

<<'COMMENT'

- wont evaluate the content of the comment (good)
- it will allow single quotes (') (good)
- you can continue the comment until COMMENT appears (good)

$foo (no error)
${a=8} (not evaluated)

COMMENT

echo $a
