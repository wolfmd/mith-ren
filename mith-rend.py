#!/usr/bin/python
# This is the daemon for the mith-ren project
# Requires: python-daemon
#

import time
from daemon import runner

class App():
    def __init__(self):
        self.stdin_path = '/dev/null'
        self.stdout_path = '/dev/tty'
        self.stderr_path = '/dev/tty'
        self.pidfile_path =  '/etc/mith-ren/logs/pid'
        self.pidfile_timeout = 5
    def run(self):
        while True:
            print("I'm hacking the gibson!")
            time.sleep(10)

app = App()
daemon_runner = runner.DaemonRunner(app)
daemon_runner.do_action()
