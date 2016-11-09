#!/usr/bin/python
# This is the daemon for the mith-ren project
# Requires: python-daemon
#

import time
import logging
import subprocess
import yaml
import os
from screenutils import list_screens, Screen
import mousejack

class App():
    def __init__(self):
        hello = "yes"
    def run(self):
        logging.basicConfig(filename='example.log',level=logging.DEBUG)
        with open("mith-rend.conf", 'r') as stream:
            try:
                config = yaml.load(stream)
                logging.debug("Successfully loaded configuration file")
            except yaml.YAMLError as exc:
                logging.warning("Could not read YAML File:%s" % exc)

#Going to add decoupling eventually

        for module in config['modules']:
            if 'mousejack' in module:
                logging.debug("Loaded mousejack module")
                # bottlewhack = mousejack.Mousejack()
                # bottlewhack.run()
                with open('output.txt', 'w') as f:
                    subprocess.Popen(["sudo python modules/mousejack/tools/nrf24-scanner.py  --verbose"], stdout = f, stderr = f, shell=True)
                with open('output.txt', 'r') as o:
                    o.seek(0,2) # Go to the end of the file
                    while True:
                        line = o.readline()
                        if not line:
                            time.sleep(0.1) # Sleep briefly
                            continue
                        print line

                # wait for the process to terminate
                # out, err = process.communicate()
                # errcode = process.returncode
                # print out



app = App()
app.run()

#TODO
# Make sure to truncate the output file
# Make sure to kill subprocesses...
#
#
