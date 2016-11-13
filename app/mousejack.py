import time
import logging
import subprocess
import yaml
from screenutils import list_screens, Screen
import mousejack

class Mousejack():
    def __init__(self):
        hello = "yes"
    def run(self):
        with open('output.txt', 'w') as f:
            subprocess.Popen(["sudo python modules/mousejack/tools/nrf24-scanner.py  --verbose"], stdout = f, stderr = f, shell=True)
