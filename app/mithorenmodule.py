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

    # FUCK MEEEEEEEEE
    #This tooo
    def killProcess(self, process, force_process):
        #process.kill()
        find_process = subprocess.Popen(["pgrep -f %s" % force_process], stdout = subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
        stdout, stderr = find_process.communicate()
        doomed_processes = stdout.split("\n")
        print stdout

        for process in doomed_processes:
            mine_process = subprocess.Popen(["ps --pid %s" % process], stdout = subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
            stdout, stderr = mine_process.communicate()
            print stdout
            print process
            print "Killing process %s" % process
            kill_process =subprocess.Popen(["kill -9 %s"  % process], stdout = subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
            stdout, stderr = kill_process.communicate()
        print "Dead"
