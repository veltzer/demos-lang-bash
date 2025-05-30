\#\!/bin/bash -eu

# This example shows how to read files for which each line is a list
# of fields separated by some separator.
#
# NOTES:
# - why is the double quotes needed when specifying "$file" at the end
# of the script? to work correctly for file names that have white spaces
# in them.
# - the -r flag is needed because otherwise backslashes will be treated
# as escape codes when reading.
# - this approach does not launch any subshells which is good and uses
# only shell builtins (printf, read)
#
# References:
# - https://unix.stackexchange.com/questions/260840/read-columns-from-file-into-separate-variables

file="/etc/passwd"
while IFS=: read -r f1 f2 f3 f4 f5 f6 f7
do
	# display fields using f1, f2,..,f7
	printf 'username: %s, shell: %s, homedir: %s\n' "$f1" "$f7" "$f6"
done < "$file"
