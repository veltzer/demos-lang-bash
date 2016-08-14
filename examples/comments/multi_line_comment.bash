#!/bin/bash -u

<<'COMMENT'

This is an example of how to do multi line comments in bash.

References:
http://www.cyberciti.biz/faq/bash-comment-out-multiple-line-code/

COMMENT

<<COMMENT

This is a classic multi line comment

You cannot say $ something here (without the space) since
bash will compain...

$$foo is fine, not because it is not evaluated but rather because
$$ is seen as the variable (current shell pid).

${a=5} will actually evaluated...

COMMENT

echo $a

: '

This is also a multi line comment

It has the advantage on <<COMMENT that you can put $foo without worry!

The problem with this is that you cant use a single quote inside the
comment.

$foo and ${a=6} behave nice...

'
echo $a

: <<'COMMENT'

This is the best solution. You can put single quotes (').
You can use variables and they will not be evaluated.
You can continue the comment until COMMENT appears

$$foo
${a:=7}

COMMENT

echo $a

<<'COMMENT'

This example:
- wont evaluate the content of the comment
- it will allow single quotes
${a=8} will actually evaluated...
WE HAVE A WINNER

COMMENT

echo $a
