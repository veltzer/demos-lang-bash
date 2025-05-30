#!/bin/bash -u

# This is an example of how to define long strings
# in bash.
# NOTES:
# - the -d '' is necessary because the default delimiter of 'read' is newline and omitting
# it will read only the first line into the variable.
# References:
# - http://stackoverflow.com/questions/15429330/how-to-specify-a-multi-line-shell-variable

read -r -d '' sql << EOF
select c1, c2 from foo
where c1='something'
EOF

echo "$sql"
