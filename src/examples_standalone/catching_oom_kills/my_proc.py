#!/usr/bin/python3

""" Allocate memory forever so the OOM killer eventually kills us. """

import time
import os
import signal

time.sleep(5)
os.kill(os.getpid(), signal.SIGKILL)
