#!/usr/bin/python3

import time
import os
import signal

time.sleep(5)
os.kill(os.getpid(), signal.SIGKILL)
