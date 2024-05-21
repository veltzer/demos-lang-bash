# Process filenames from Windows

given a folder of file names the come from a windows
system write a script that renames these files to be
Linux friendly.

In specific you have to modify the file names such that every space which is
part of the files name is replaced by an underscore.

At the beginning of your script, make sure you are given a folder parameter
by the user.
Hint:
* the variable $# contains the number of arguments to your script

At the beginning of the your script, when you receive a folder name, make sure
that the folder you are given really exists and exit with an error otherwise.

Example: "a b.txt" -> "a_b.txt"

* Assume that your manipulation of the filename will not overwrite any existing files.
