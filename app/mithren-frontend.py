#!/usr/bin/python
#!/usr/bin/env python
# This is the daemon for the mith-ren project
# Requires: python-daemon
#

import os
import subprocess
import sys
import emailagent
import logging
import yaml

class MithrendFrontend():

    def __init__(self, email_agent):
        # This is the daemon which runs each module
        self.pid = None
        self.email_agent = email_agent

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
        print("[4] View Logged Packets")
        print("[5] Follow Daemon")
        print("[6] Edit Config file")
        print("[7] Send a Report")
        print("[8] Exit\n\n\n\n\n")
        command = self.get_input()
        return command

    def display_prompt(self):
        # Different Functions of Mithrend.py
        print("\nMithren Menu:\n[1] Start [2] Stop [3] Status [4] View Logged Packets [5] Follow Daemon\n" \
              "[6] Edit Config file [7] Send a Report [8] Exit\n\n")
        command = self.get_input()
        return command

    def get_input(self):
        command = raw_input("> ")
        return command

    def tail(self, f, lines=10):
        total_lines_wanted = lines

        BLOCK_SIZE = 1024
        f.seek(0, 2)
        block_end_byte = f.tell()
        lines_to_go = total_lines_wanted
        block_number = -1
        blocks = [] # blocks of size BLOCK_SIZE, in reverse order starting
                    # from the end of the file
        while lines_to_go > 0 and block_end_byte > 0:
            if (block_end_byte - BLOCK_SIZE > 0):
                # read the last block we haven't yet read
                f.seek(block_number*BLOCK_SIZE, 2)
                blocks.append(f.read(BLOCK_SIZE))
            else:
                # file too small, start from begining
                f.seek(0,0)
                # only read what was not read
                blocks.append(f.read(block_end_byte))
            lines_found = blocks[-1].count('\n')
            lines_to_go -= lines_found
            block_end_byte -= BLOCK_SIZE
            block_number -= 1
        all_read_text = ''.join(reversed(blocks))
        return '\n'.join(all_read_text.splitlines()[-total_lines_wanted:])

    def gather_data_from_daemon(self):
        return "Here ya go, boss"

    def getDaemonStatus(self):
        daemon_status = "Unknown status"
        try:
            daemon_status = subprocess.Popen(["systemctl", "is-active",  "mithren"], stdout=subprocess.PIPE, stderr= subprocess.PIPE)
            daemon_status, daemon_fail = daemon_status.communicate()
        except:
            logger.debug('Could not retrieve pidfile from system')
        return daemon_status


    def getDaemonPid(self):
        daemon_pid = "Unknown PID"
        try:
            daemon_pid_raw = subprocess.Popen(["systemctl", "show",  "mithren", "--property=\"MainPID\""], stdout=subprocess.PIPE, stderr= subprocess.PIPE)
            daemon_pid, daemon_pid_fail = daemon_pid_raw.communicate()
            print daemon_pid
            print daemon_pid_fail
            print daemon_pid
        except:
            logger.debug('Could not retrieve pidfile from system')
        return daemon_pid

    def startDaemon(self):
        status = self.getDaemonStatus()
        pid = "Unknown"
        if "active" in status:
            pid = self.getDaemonPid()
            print "Daemon is already running: PID is %s" % pid
        else:
            daemon = subprocess.Popen(["systemctl", "start",  "mithren"],stdout=subprocess.PIPE, stderr= subprocess.PIPE)
            daemon_start, daemon_fail = daemon.communicate()
            pid = self.getDaemonPid()
            print "Daemon started as pid %s" % pid
            logging.info('Daemon started, pid: %s')

    def stopDaemon(self):
        status = self.getDaemonStatus()
        if "active" in status:
            daemon = subprocess.Popen(["systemctl", "stop",  "mithren"],stdout=subprocess.PIPE, stderr= subprocess.PIPE)
            daemon_stop, daemon_fail = daemon.communicate()
            print daemon_stop
            print daemon_fail
            print "Daemon stopped"
            logging.info('Daemon stopped')
        else:
            print "Daemon has already been already stopped"

    def process_command(self, command):
        # Start Daemon
        if command == "1":
            self.pid = self.startDaemon()

        # Stop Daemon
        elif command == "2":
            self.pid = self.stopDaemon()

        # Status of Daemon
        elif command == "3":
            status = self.getDaemonStatus()
            if "active" in status:
                pid = self.getDaemonPid()
                print "Daemon running as process %s" % pid
            else:
                print "Daemon has been stopped"

        # View Log
        elif command == "4":
            with ('correlation.txt', 'r') as f:
                recent_lines = self.tail(f, 10)
            print recent_lines

        # View Log Forever
        elif command == "5":

            print "Coming soon"
            #infinite loop of readlines()

        # Edit Config
        elif command == "6":
            print "Coming soon"

        # Send Report
        elif command == "7":
            print "Sending email to ....."
            payload = self.gather_data_from_daemon()
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
    app = MithrendFrontend(email_agent)
    app.run()

#//TODO
# Make a process to follow logs
# Perhaps make it sort of nicely and slowly present information to the end user- using ...s and now sending sleeps
# Verify if dongle is attached
