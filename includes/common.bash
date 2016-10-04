<<'COMMENT'

This example shows that ':' is an actual command (builtin) which accepts arguments,
does nothing and changes '$?' to '0'.
This is very similar to 'true' (which is also a builtin).
'false' is similar except '$?' is changed to '1'.

Diffences between '#' and ':'
- '#' does not change '$?' while ':' does change '$?' to '0'.
- '#' cannot be followed by another command on the same line with ';' while ':' can.

COMMENT

function error() {
	local parent_lineno="$1"
	local message="$2"
	local code="${3:-1}"
	if [[ -n "$message" ]] ; then
		echo "Error on or near line ${parent_lineno}: ${message}; exiting with status ${code}"
	else
		echo "Error on or near line ${parent_lineno}; exiting with status ${code}"
	fi
	exit "${code}"
}
