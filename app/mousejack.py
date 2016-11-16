import time
import logging
import subprocess
import yaml
import re
import os
import signal
from screenutils import list_screens, Screen
import mousejack, mithorenmodule

class Mousejack(mithorenmodule.Mithorenmodule):

    def startProcess(self, command, file):
        process = subprocess.Popen(["python", "%s" % command ,"--verbose"]  , stdout = file, stderr = file)
        return process

    def capture(self):
        #try catch the Device not found, device busy, etc errors

        with open('output.txt', 'w') as f:
            mousejacker = self.startProcess("../modules/mousejack/tools/nrf24-scanner.py",f)
        with open('output.txt', 'r') as o:
            o.seek(0,2) # Go to the end of the file
            test = 0
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
        with open('follow.txt', 'w') as f:
            mousejack_follower = subprocess.Popen(["python", "../modules/mousejack/tools/nrf24-sniffer.py", "-a", "%s" % target_device, "--verbose"], stdout = f, stderr = f)
        return mousejack_follower
