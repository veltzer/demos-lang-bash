#!/bin/bash -u

# This is an example of how to do multi line comments in bash.
# The result? the <<'FOO'... FOO idiom seems to be the best.
#
# References:
# - http://www.cyberciti.biz/faq/bash-comment-out-multiple-line-code/
# - https://unix.stackexchange.com/questions/37411/multiline-shell-script-comments-how-does-this-work

function check() {
	local a=$1
	local val=$2
	local name=$3
	local exit_code=$4
	if [[ "$a" -ne $val ]]
	then
		echo "${name}: not evaulated"
	else
		echo "${name}: evaluated"
	fi
	if [[ "$exit_code" -ne 0 ]]
	then
		echo "${name}: doesn't have 0 exit code"
	else
		echo "${name}: has 0 exit code"
	fi

}

false

# shellcheck disable=SC2188
<<COMMENT

- evaluates the content of the comment (bad)
$$foo is fine, not because it is not evaluated but rather because
$$ is seen as the variable (current shell pid).
- it will allow single quotes (') (good)
- you can continue the comment until COMMENT appears (good)
- changes $? (bad)

$$foo (single $ will cause an error, bad)
${a=5} (evaluated, bad)

COMMENT
check $a 5 "first version" $?

false

# shellcheck disable=SC2016
: '

- wont evaluate the content of the comment (good)
- cannot use single quotes (bad)
- the comment continues until a single quote (bad)
- changes $? (bad)

$foo (no error, good)
${a=6} (not evaluated, good)

'
check $a 6 "second version" $?

false

: <<'COMMENT'

- wont evaluate the content of the comment (good)
- it will allow single quotes (') (good)
- you can continue the comment until COMMENT appears (good)
- changes $? (bad)

$foo (no error, good)
${a=7} (not evaluated, good)

COMMENT
check $a 7 "third version" $?


false

# shellcheck disable=SC2188
<<'COMMENT'

- wont evaluate the content of the comment (good)
- it will allow single quotes (') (good)
- you can continue the comment until COMMENT appears (good)
- changes $? (bad)

$foo (no error, good)
${a=8} (not evaluated, good)

COMMENT
check $a 8 "fourth version" $?

false

# this is a multi line comment the old style
# wont evaluate the content of the comment (good)
# it will allow single quotes (') (good)
# you need to repeat the # syntax on every line (bad)
# does not change $? (good)
#
# $foo (no error, good)
# ${a=8} (not evaluated, good)
check $a 8 "fifth version" $?
