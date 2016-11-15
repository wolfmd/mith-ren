import time
import logging
import subprocess
import yaml
import re
import os
from screenutils import list_screens, Screen
import mousejack, mithorenmodule

class Mousejack(mithorenmodule.Mithorenmodule):

    def startProcess(self, command, file):
        process = subprocess.Popen(["%s" % command], stdout = file, stderr = file, shell=True)
        return process

    def capture(self):
        with open('output.txt', 'w') as f:
            mousejacker = self.startProcess("sudo python ../modules/mousejack/tools/nrf24-scanner.py  --verbose",f)
        with open('output.txt', 'r') as o:
            o.seek(0,2) # Go to the end of the file
            while True:
                line = o.readline()
                if not line:
                    time.sleep(0.1) # Sleep briefly
                    continue
            #[2016-11-11 05:25:02.489]  80   5  9A:45:0A:44:47  85:02:48:A9:4B

                if self.isTarget(line):
                    print line
                    with open('found.txt','a') as x:
                        x.write(line)
                    target_device = self.getTargetDeviceID(line)
                    self.killProcess(mousejacker, "[s]canner")
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
        with open('follow.txt', 'w') as f:
            mousejack_follower = self.startProcess("sudo python ../modules/mousejack/tools/nrf24-sniffer.py -a %s --verbose" % target_device, f)
        return mousejack_follower
