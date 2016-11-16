import unittest
import sys, os
import subprocess

from app import mithrend, mousejack

class TestMousejack(unittest.TestCase):

    def setUp(self):
        self.instance = mousejack.Mousejack()
        self.targetString = '[2016-11-11 05:25:02.489]  80   5  9A:45:0A:44:47  85:02:48:A9:4B'

    def test_mousejack_isTarget(self):

        self.assertTrue(self.instance.isTarget(self.targetString))

    def test_mousejack_getTargetDeviceID(self):
        raw_string = self.instance.getTargetDeviceID(self.targetString)
        self.assertEqual(raw_string, '9A:45:0A:44:47', "Got %s" % raw_string )

    def test_mousejack_followTarget(self):
        self.instance.followTarget("9A:45:0A:44:47")
        process = subprocess.Popen(["pgrep sniffer"], shell=True,
                           stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()
        self.assertIsNotNone(stdout)

    def test_mousejack_killProcess(self):
        #Mock a daemon
        with open('test.log', 'w') as f:
            process = subprocess.Popen(["tail -f output.txt"], shell=True, stdout = f, stderr = f)
        #Check a daemon
        process = subprocess.Popen(["pgrep -f tail -f /etc/hosts"], shell=True,
                           stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()
        self.assertIsNotNone(stdout)
        print stdout
        #Try to kill daemon
        self.instance.killProcess("tail -f /etc/hosts")
        process = subprocess.Popen(["pgrep -f tail -f /etc/hosts"], shell=True,
                           stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()
        self.assertEqual(stdout,'')

if __name__ == '__main__':
    unittest.main()
