# Ping IPs

you are given a file with a list of IPs
you script should go over all IPs in the file,
pinging each one.
The script should create a new file with just the IPs that were found
to be pingable.

Hint:

```bash
ping -w [n] [address]
```

will stop after n second and it's return code will indicate if pinging
was successful or not.
