#!/usr/bin/python
# This is the daemon for the mith-ren project
# Requires: python-daemon
#

import time
import logging
import signal
import subprocess
import yaml
import os
from screenutils import list_screens, Screen
import mousejack

class Interface():
    def __init__(self, killer):
        signal.signal(signal.SIGINT, self.on_terminate)
        signal.signal(signal.SIGTERM, self.on_terminate)

    def daemon_reload(self):
        mousejacker = subprocess.Popen([""], stdout = f, stderr = f, shell=True)


    def run(self):
        logging.basicConfig(filename='example.log',level=logging.DEBUG)
        with open("mithrend.conf", 'r') as stream:
            try:
                config = yaml.load(stream)
                logging.debug("Successfully loaded configuration file")
            except yaml.YAMLError as exc:
                logging.warning("Could not read YAML File:%s" % exc)

#Going to add decoupling eventually
        print "Have a prompt"
        please = raw_input()
        if please == 'y'
            mouse
        if killer.kill_now:
            app.kill()
            break

                # wait for the process to terminate
                # out, err = process.communicate()
                # errcode = process.returncode
                # print out
    def on_terminate(self, signum, frame):
        self.kill_now = True

class GracefulKiller:
  kill_now = False
  def __init__(self):
    signal.signal(signal.SIGINT, self.exit_gracefully)
    signal.signal(signal.SIGTERM, self.exit_gracefully)

  def exit_gracefully(self,signum, frame):
    self.kill_now = True

killer=GracefulKiller()
app = App(killer)
app.run()


#TODO
# Make sure to truncate the output file
# Make sure to kill subprocesses...
#
#
