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
import mousejack, mithorenmodule

class Mithrend():

    def __init__(self):
        # This is the daemon which runs each module
        self.okay = ""

    def run(self):
        # The primary loop of the daemon
        logging.basicConfig(filename='mithrend.log',level=logging.DEBUG)
        logger = logging.getLogger()
        with open("mithrend.conf", 'r') as stream:
            try:
                config = yaml.load(stream)
                logger.debug("Successfully loaded configuration file")
            except yaml.YAMLError as exc:
                logger.warning("Could not read YAML File:%s" % exc)

        for module in config['modules']:
            # Run each sniffing utility installed
            if 'mousejack' in module:
                mousejack_instance = mousejack.Mousejack(logger)
                logging.debug("Loaded mousejack module")
                mousejack_instance.capture()

    def retrieve_report(self):
        lines = []
        return lines



#TODO
# Deal with occaisional resource busy issue
# Move away from using files
#

if __name__ == '__main__':
    app = Mithrend()
    app.run()
