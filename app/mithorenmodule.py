import time
import logging
import subprocess
import yaml
from screenutils import list_screens, Screen
import mousejack
import os

class Mithorenmodule():
    def __init__(self, logger, database):
        self.hello = "yes"
        self.syre = "yes"
        self.logger = logger
        self.database = database
        # Start process#
        #stop process

    def startProcess(self, command, file):
        print "Starting Process, homeboy"


    #Very good and helpful
    def killProcess(self, process):

        process.terminate()
        process.wait()
        #Really really kill it
        if process.poll() is None:  # Force kill if process is still alive
                time.sleep(3)
                os.killpg(process.pid, signal.SIGKILL)
                #Just die
                os.kill(process.pid,9)
        self.logger.debug("Process killed")
