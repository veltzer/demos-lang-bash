\#\!/bin/bash -eu

# This example shows how to convert relative file names to absolute
# ones.
#
# References:
# - https://stackoverflow.com/questions/3915040/bash-fish-command-to-print-absolute-path-to-a-file

filename="relative_to_absolute_path.bash"

abs1=$(realpath "$filename")
echo "abs1 is [$abs1]"

abs2=$(readlink -f "$filename")
echo "abs2 is [$abs2]"

get_abs_filename() {
	echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

abs3=$(get_abs_filename "$filename")
echo "abs3 is [$abs3]"

get_abs_filename_no_subshell() {
	local __user_var=$1
	local name=$2
	if [[ "$name" == /* ]]
	then
		eval "$__user_var='$name'"
	else
		eval "$__user_var='$PWD/$name'"
	fi
}

get_abs_filename_no_subshell abs4 "$filename"
# shellcheck disable=SC2154
echo "abs4 is [$abs4]"
