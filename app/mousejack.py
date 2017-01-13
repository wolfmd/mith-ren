import time
import logging
import subprocess
import yaml
import re
import os
import sys
import signal
from screenutils import list_screens, Screen
import mousejack, mithorenmodule

class Mousejack(mithorenmodule.Mithorenmodule):

    # Mousejack-specific
    def capture(self, command, file):
        try:
            process = subprocess.Popen(["python", "%s" % command ,"--verbose"]  , stdout = file, stderr = file)
            return process
        except Exception as e:
            # Man, this is ugly. Catches usb errors)
            self.logger.warning('Had a USB issue. Killing sniffer processes: %s, force killing and retrying. Is the antenna hooked up right?' % e)
            print e
            sys.exit()

    # Run the search
    def startProcess(self):


        with open('output.txt', 'w') as f:
            try:
                mousejacker = self.capture("../modules/mousejack/tools/nrf24-scanner.py",f)
            except subprocess.CalledProcessError as e:
                self.logger.warning('Received error: %s, force killing and retrying. Is the antenna hooked up right?' % e.output)
                mousejack_follower = subprocess.Popen(["ps -A -o pid,cmd|grep [v]erbose |head -n 1 | awk '{print $1}'"], stdout = subprocess.PIPE, stderr = subprocess.PIPE, shell=True)
                try:
                    mousejacker = self.startProcess("../modules/mousejack/tools/nrf24-scanner.py",f)
                except subprocess.CalledProcessError as f:
                    self.logger.error('Received another error: %f, exiting. Please reseat antenna and restart daemon' % f.output)
                    sys.exit()

        with open('output.txt', 'r') as o:
            o.seek(0,2) # Go to the end of the file
            while True:
                line = o.readline()
                if not line:
                    time.sleep(0.1) # Sleep briefly
                    continue
            #[2016-11-11 05:25:02.489]  80   5  9A:45:0A:44:47  85:02:48:A9:4B
                if self.isTarget(line):
                    self.logger.info("Found a target: %s" % line)
                    with open('found.txt','a') as x:
                        x.write(line)
                    self.killProcess(mousejacker)
                    time.sleep(1)
                    target_device = self.getTargetDeviceID(line)
                    mousejack_follower = self.followTarget(target_device)


    def isTarget(self, line):
        found = False
        if re.search(r'..:..:..:..:..', line):
            found = True
        return found

    def getTargetDeviceID(self, line):
        target_device = line.split("  ")[3]
        return target_device

    def followTarget(self, target_device):
        self.logger.info("Following target %s" % target_device)
        with open('follow.txt', 'w') as f:
            mousejack_follower = subprocess.Popen(["python", "../modules/mousejack/tools/nrf24-sniffer.py", "-a", "%s" % target_device, "--verbose"], stdout = f, stderr = f)
        # How to make this into not log files
        with open('follow.txt', 'r') as o:
            o.seek(0,2)
            timeout = 6000
            while timeout > 0:
                timeout = timeout - 1
                if timeout % 50 == 0:
                    logging.debug("Timing out in %s" % timeout)
                line = o.readline()
                if not line:
                    time.sleep(0.1)
                    continue
                if self.isTarget(line) and "Unable" not in line and "Entering" not in line:
                    #Reset timeout
                    timeout = 6000
                    self.logger.info("Sniffed a packet %s" % line)
                    with open('correlation.txt','a') as x:
                        x.write("%s : %s " % (target_device, line))
            #Go back to scanning
            self.killProcess(mousejack_follower)
            time.sleep(1)
            self.startProcess()

        return mousejack_follower
