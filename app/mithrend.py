#!/usr/bin/python
# This is the daemon for the mith-ren project
# Requires: python-daemon
#

import time
import logging
import signal
import subprocess
import yaml
import re
import os
from screenutils import list_screens, Screen
import mousejack, mithorenmodule

class Mithrend():
    def __init__(self):
        self.okay = "okay"
        #signal.signal(signal.SIGINT, self.on_terminate)
        #signal.signal(signal.SIGTERM, self.on_terminate)

    def run(self):
        logging.basicConfig(filename='example.log',level=logging.DEBUG)
        with open("mithrend.conf", 'r') as stream:
            try:
                config = yaml.load(stream)
                logging.debug("Successfully loaded configuration file")
            except yaml.YAMLError as exc:
                logging.warning("Could not read YAML File:%s" % exc)

#Going to add decoupling eventually
        for module in config['modules']:
            #kickOff%s
            if 'mousejack' in module:
                mousejack_instance = mousejack.Mousejack()
                logging.debug("Loaded mousejack module")
                # bottlewhack = mousejack.Mousejack()
                # bottlewhack.run()
                mousejack_instance.capture()
    #This can probbaly be placed into a class of Mithoren object or something



# class GracefulKiller:
#   kill_now = False
#   def __init__(self):
#     signal.signal(signal.SIGINT, self.exit_gracefully)
#     signal.signal(signal.SIGTERM, self.exit_gracefully)
#
#   def exit_gracefully(self,signum, frame):
#     self.kill_now = True

#For app in config, send as list of classes??




#TODO
# Make sure to truncate the output file
# Make sure to kill subprocesses...
#
#

if __name__ == '__main__':
    app = Mithrend()
    app.run()
