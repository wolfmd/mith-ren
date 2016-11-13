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
import mousejack

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
            if 'mousejack' in module:
                logging.debug("Loaded mousejack module")
                # bottlewhack = mousejack.Mousejack()
                # bottlewhack.run()
                with open('output.txt', 'w') as f:
                    mousejacker = subprocess.Popen(["sudo python ../modules/mousejack/tools/nrf24-scanner.py  --verbose"], stdout = f, stderr = f, shell=True)
                with open('output.txt', 'r') as o:
                    o.seek(0,2) # Go to the end of the file
                    while True:
                        try:
                            line = o.readline()
                            if not line:
                                time.sleep(0.1) # Sleep briefly
                                continue
                        #[2016-11-11 05:25:02.489]  80   5  9A:45:0A:44:47  85:02:48:A9:4B

                            if isTarget(line):
				print line
				with open('found.txt','a') as x:
				    x.write(line)
				target_device = getTargetDeviceID(line)
				followTarget(target_device)


			except:
			    if killer.kill_now:
                                mousejacker.kill()
                                break

    def isTarget(self, line):
        if re.search(r'..:..:..:..:..', line):
            found = True
	    return found

    def getTargetDeviceID(self, line):
	    target_device = line.split("  ")[3]
	    return target_device

    def followTarget(self, target_device):
        with open('follow.txt', 'w') as f:
            subprocess.Popen(["sudo python ../modules/mousejack/tools/nrf24-sniffer -a %s --verbose" % target_device], stdout = f, stderr = f, shell=True)

    def on_terminate(self, signum, frame):
        self.kill_now = True

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
