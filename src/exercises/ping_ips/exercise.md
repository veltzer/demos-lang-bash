# Ping ips

you are given a file with a list of ips
you script should go over all ips in the file,
pinging each one.
The script should create a new file with just the ips that were found
to be pingable.

Hint:

```bash
ping -w [n] [address]
```

will stop after n second and it's return code will indicate if pinging
was successful or not.
