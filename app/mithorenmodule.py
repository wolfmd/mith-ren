import time
import logging
import subprocess
import yaml
from screenutils import list_screens, Screen
import mousejack

class Mithorenmodule():
    def __init__(self):
        self.hello = "yes"
        self.syre = "yes"

        # Start process#
        #stop process

    def startProcess(self, command, file):
        print "Starting Process, homeboy"

    #This tooo
    def killProcess(self, process):
        process.kill()
        process_list = subprocess.Popen(["ps aux | grep scanner"], stdout = PIPE, stderr=PIPE, shell=True)
        stdout, stderr = process.communicate()
        for process in process_list:
            process_list = subprocess.Popen(["sudo kill -9 %s"  % process[2]], stdout = PIPE, stderr=PIPE, shell=True)
            stdout, stderr = process.communicate()
        print "Dead"
