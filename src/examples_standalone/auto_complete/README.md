# Auto Complete

This example shows you how to create an auto complete script

The crux:

complete using bash function

```bash
complete -F [funcname] [prefix]
```

complete using external program

```bash
complete -C [program] [prefix]
```

The program gets the prefix in it's command line arguments and the full line
in an environment variable called `COMP_LINE`

References:
* [link](https://askubuntu.com/questions/68175/how-to-create-script-with-auto-complete)
