# Show table
Write a script that shows a file in a tabular format.
Here is an example of a file:

```txt
Mark Python 8
Doron Java 5
```

The output should be like this:

```txt
Mark    Python  8
Doron   Java    5
```

Note that the output is totally tabular and each column is 8 characters wide.
What do you need to do?
Read the values in the original table and "pad" them with spaces so that each entry
will be 8 characters wide.
Don't worry about entries which are more than 7 characters wide, there will be no entries like that.
