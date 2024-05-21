# Network exercise

* Make sure you have some network application running (wget of a big file).
* Create a script that will show you, in real time, how many receive and transmit bytes are in the OS buffer of that specific connection.

How would you do it?
* go from process to the list of its sockets via `/proc/[pid]/fd/socket:[]`
    now we have a list of it's sockets.
* look at `/proc/net/tcp` find the line where the fd = the file that you are looking for
    and extract the `tx_queue` and `rx_queue` fields.
