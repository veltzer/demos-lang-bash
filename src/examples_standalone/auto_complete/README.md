This example shows you how to creata an autocomplete script

Thc crux:

complete using bash function
complete -F [funcname] [prefix]

complete using external program
complete -C [program] [prefix]
The program gets the prefix in it's command line arguments and the full line
in an environment variable called `COMP_LINE`

References:
- https://askubuntu.com/questions/68175/how-to-create-script-with-auto-complete
