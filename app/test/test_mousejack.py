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
        process = subprocess.Popen(["ps aux | grep [s]canner"], shell=True,
                           stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()
        self.assertIsNotNone(stdout)

    def test_mousejack_killProcess(self):
        process = subprocess.Popen(["less output.txt"], shell=True,
                           stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE)
        process.communicate()
        process = subprocess.Popen(["pgrep -f output.txt"], shell=True,
                           stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()
        print stdout
        self.instance.killProcess(process, "output.txt")
        process = subprocess.Popen(["pgrep -f output.txt"], shell=True,
                           stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()
        self.assertIsNone(stdout.replace('\n',''))

if __name__ == '__main__':
    unittest.main()
