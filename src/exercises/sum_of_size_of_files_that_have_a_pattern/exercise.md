# Sum of size of files that have a pattern

You are a system administrator that has to backup all files in /etc (up to two levels
under /etc) that have the word "backup" in them.
You want to write a script to calculate the size of disk needed for the backup.
So....

Scan /etc recursively for regular files (up to 2 levels) and find all files that have
the word "backup" in them.
Print the sum of sizes of all these files.

You are required (for good reasons) to write a script with two phases:
* first phase will create a text file with all the sizes that you want to add up
* second phase will add up all the sizes

Hint:
- you cannot use the -exec flag to find(1) more than once. You have to think of other
alternatives that we studied in class.
