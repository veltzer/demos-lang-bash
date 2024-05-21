# Process filenames from Windows

given a folder of file names the come from a windows
system write a script that renames these files to be
linux friendy.

In specific you have to modify the file names such that every space which is
part of the files name is replaced by an underscore.

At the begining of your script, make sure you are given a folder paramter
by the user.
Hint:
* the variable $# contains the number of arguments to your script

At the begining of the your script, when you receive a folder name, make sure
that the folder you are given really exists and exit with an error otherwise.

Example: "a b.txt" -> "a_b.txt"

* Assume that your maniplation of the filename will not overwrite any existing files.
