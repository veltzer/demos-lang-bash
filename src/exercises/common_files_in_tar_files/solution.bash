#!/bin/bash -eu

# create the files for doing the solution
rm -f *.tar
for x in {a,b,c}; do echo $x > $x; done; tar cf 1.tar {a,b,c}
for x in {b,c,d}; do echo $x > $x; done; tar cf 2.tar {b,c,d}
rm -f {a,b,c,d}

# the solution
tar tf 1.tar > /tmp/list_1
tar tf 2.tar > /tmp/list_2
common_file_names=$(comm -12 /tmp/list_?)
tar xf 1.tar $common_file_names
tar cf common.tar $common_file_names
rm $common_file_names 1.tar 2.tar
