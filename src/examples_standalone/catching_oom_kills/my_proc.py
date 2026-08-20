#!/usr/bin/python3

""" Allocate memory forever so the OOM killer eventually kills us. """

import os
import signal
import time

time.sleep(5)
os.kill(os.getpid(), signal.SIGKILL)
