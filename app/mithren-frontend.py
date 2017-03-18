#!/usr/bin/python
#!/usr/bin/env python
# This is the daemon for the mith-ren project
# Requires: python-daemon
#
import datetime
import os
import subprocess
import sys
import emailagent, databaseconnection, conninfo
import logging
import yaml

class MithrendFrontend():

    def __init__(self, email_agent, config):
        # This is the daemon which runs each module
        self.install_location = '/usr/share/mith-ren/app'
        self.capture_file='correlation.txt'
        self.email_agent = email_agent
        self.config = config


    def display_start_menu(self):
        os.system("clear")
        print " "
        print "==               ,  ,,     ` `                     =="
        print "==           '  ||  ||     , ,                     =="
        print "== \\\/\\\/\\\ \\\ =||= ||/\\\  /'\\\ ,._-_  _-_  \\\/\\\  =="
        print "== || || || ||  ||  || || || ||  ||   || \\\ || ||  =="
        print "== || || || ||  ||  || || || ||  ||   ||/   || ||  =="
        print "== \\\ \\\ \\\ \\\  \\\, \\\ |/ \\\,/   \\\,  \\\,/  \\\ \\\  =="
        print "==             `      _/                           =="
        print ""
        print('Please enter the number of which action you wish Mithoren to perform.')
        print("[1] Start")
        print("[2] Stop")
        print("[3] Status")
        print("[4] View Identified Devices")
        print("[5] Follow Daemon")
        print("[6] Edit Config file")
        print("[7] Send a Report")
        print("[8] Exit\n\n\n\n\n")
        command = self.get_input()
        return command

    def display_prompt(self):
        # Different Functions of Mithrend.py
        print("\nMithren Menu:\n[1] Start [2] Stop [3] Status [4] View Identified Devices [5] Follow Daemon\n" \
              "[6] Edit Config file [7] Send a Report [8] Exit\n\n")
        command = self.get_input()
        return command

    def get_input(self):
        command = raw_input("> ")
        return command

    def pullRawPosts(self):
        conn = conninfo.ConnInfo()
        database_connection = databaseconnection.DatabaseConnection(conn)
        database_connection.connect()
        database = database_connection.getDatabase()
        posts = database.posts
        raw_posts = posts.find()
        return raw_posts

    def pullPosts(self):
        raw_posts = self.pullRawPosts()
        entries = []

        for post in raw_posts:
            timestamp = post['date']
            did = post['device_id']
            channel = post['channel']
            try:
                mfg = post['manufacturer']
                model = post['model']
            except:
                mfg = "Logitech"
                model = "K630"
            message = post['messages'][0]
            entries.append("   %s       %s      %s  %s\n" % ( timestamp, did, mfg, model))
        return entries

    def getPrettyData(self):
        entries = self.pullPosts()
        pretty_string = """The following devices were identified as of %s:\n|             Time            |    Device ID    |      Device Name        |\n------------------------------------------------------------------------\n""" % datetime.datetime.now()
        for entry in entries:
            pretty_string += "%s" % entry
        return pretty_string

    def getHTMLPrettyData(self):
        entries = self.pullPosts()
        pretty_string = "The following devices were identified as of %s :\n \
                        |           Time            |    Device ID   |         Device Name       | \
                        ------------------------------------------------------------------" % datetime.datetime.now()
        for device in pretty_data:
            pretty_string += "%s" % device
        return pretty_string

    def getDaemonStatus(self):
        daemon_status = "Unknown"
        try:
            daemon = subprocess.Popen(["systemctl", "is-active",  "mithren"], stdout=subprocess.PIPE, stderr= subprocess.PIPE)
            daemon_status, daemon_fail = daemon.communicate()
        except e:
            logger.debug('Could not retrieve status from system')
        return daemon_status


    def getDaemonPid(self):
        daemon_pid = "Unknown"
        daemon = subprocess.Popen(['systemctl show mithren --property="MainPID"'], shell=True, stdout=subprocess.PIPE, stderr= subprocess.PIPE)
        daemon_pid, daemon_pid_fail = daemon.communicate()
        return daemon_pid.split("=")[1]

    def startDaemon(self):
        status = self.getDaemonStatus()
        pid = "Unknown"
        if "active" in status:
            daemon = subprocess.Popen(["systemctl", "start",  "mithren"],stdout=subprocess.PIPE, stderr= subprocess.PIPE)
            daemon_start, daemon_fail = daemon.communicate()
            pid = self.getDaemonPid()
            print "Daemon started as pid %s" % pid
            logging.info('Daemon started, pid: %s')
        else:
            pid = self.getDaemonPid()
            print "Daemon is already running: PID is %s" % pid

    def stopDaemon(self):
        status = self.getDaemonStatus()
        if "inactive" in status:
            print "Daemon has already been already stopped"
        else:
            daemon = subprocess.Popen(["systemctl", "stop",  "mithren"],stdout=subprocess.PIPE, stderr= subprocess.PIPE)
            daemon_stop, daemon_fail = daemon.communicate()
            print "Daemon stopped"
            logging.info('Daemon stopped')


    def process_command(self, command):
        print "\n"
        # Start Daemon
        if command == "1":
            self.pid = self.startDaemon()

        # Stop Daemon
        elif command == "2":
            self.pid = self.stopDaemon()

        # Status of Daemon
        elif command == "3":
            status = self.getDaemonStatus()
            if "inactive" in status:
                print "Daemon has been stopped"
            else:
                pid = self.getDaemonPid()
                print "Daemon running as process %s" % pid


        # View Log
        elif command == "4":
            print self.getPrettyData()

        # View Log Forever
        elif command == "5":
            while True:
                print("\n---------------------------------------------------------------\n\n"\
                "What would you like to follow?:\n[1] Daemon Log [2] Mousejack Scanner [3] Found Devices [4] Found Packets [5] Follow Devices [6] Go back")
                sub_command = self.get_input()
                if sub_command == "1":
                    tail_file = "mithrend.log"
                elif sub_command == "2":
                    tail_file = "follow.txt"
                elif sub_command == "3":
                    tail_file = "correlation.txt"
                elif sub_command == "4":
                    tail_file = "found.txt"
                elif sub_command == "5":
                    tail_file = "output.txt"
                elif sub_command == "6":
                    break
                else:
                    print "Invalid command"
                    continue
                print "---------------------------------------------------------------"
                os.system("tail -f %s/%s" % (self.install_location,tail_file))

        # Edit Config
        elif command == "6":
            try:
                os.system("vim %s/mithrend.conf" % self.install_location) ,
            except e:
                print "Oops, check the log"
                logging.error('Failed to execute config edit due to %s' % e)
            print "Make sure to restart the daemon to enable your changes"

        # Send Report
        elif command == "7":
            print("\n---------------------------------------------------------------\n\n"\
            "Which format would you prefer?:\n[1] JSON [2] HTML ")
            sub_command = self.get_input()
            if sub_command == "1":
                payload = json.dumps(self.pullRawPosts)
            elif sub_command == "2":
                payload = self.getPrettyData()
            emailers = ""
            emailaddrs = ""
            for email in self.config['receiver-emails']:
                emailers += "%s, " % email['email-name']
                emailaddrs += "%s, " % email['email-address']
            print "Sending email to %s %s" % ( emailers[:-2], emailaddrs[:-2] )
            self.email_agent.set_message(payload)
            self.email_agent.send_email()

        # Exit
        elif command == "8":
            # good advice
            print "Remember to brush your teeth!"
            sys.exit()

        else:
            print('Invalid Command.')

    def run(self):
        command = self.display_start_menu()
        while True:
            self.process_command(command)
            command = self.display_prompt()





#TODO
# Deal with occaisional resource busy issue
# Move away from using files
#

if __name__ == '__main__':
    try:
        logging.basicConfig(filename='mithren-frontend.log',level=logging.DEBUG)
        logger = logging.getLogger()
    except IOError as error:
        print "Hey there, try running as root, we need some power for this baby to run"
        sys.exit()
    with open("mithrend.conf", 'r') as stream:
        try:
            config = yaml.load(stream)
            logger.debug("Successfully loaded configuration file")
        except yaml.YAMLError as exc:
            logger.warning("Could not read YAML File:%s" % exc)
            print "Please fix mithren-frontend.conf YAML file and restart the program"
            sys.exit()


    email_agent = emailagent.EmailAgent(logger, config)
    app = MithrendFrontend(email_agent, config)
    app.run()

#//TODO
# Make a process to follow logs
# Perhaps make it sort of nicely and slowly present information to the end user- using ...s and now sending sleeps
# Verify if dongle is attached
# It would be cool if I could whip up a terminal dashboard for the log files
