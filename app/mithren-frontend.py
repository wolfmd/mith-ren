#!/usr/bin/python
# This is the daemon for the mith-ren project
# Requires: python-daemon
#

import subprocess
import sys

class MithrendFrontend():

    def __init__(self, email_agent):
        # This is the daemon which runs each module
        self.okay = ""
        self.email_agent = email_agent

    def display_start_menu(self):
        print "\n======================================================================"
        print "=======================    MITH-REN    ==============================="
        print "======================================================================\n"
        print('Please enter the number of which action you wish Mithoren to perform.')
        print("[1] Start")
        print("[2] Stop")
        print("[3] Status")
        print("[4] View Logged Packets")
        print("[5] Follow Daemon")
        print("[6] Edit Config file")
        print("[7] Send a Report")
        print("[8] Exit")
        command = self.get_input()
        return command

    def display_prompt(self):
        # Different Functions of Mithrend.py
        print("\n[1] Start [2] Stop [3] Status [4] View Logged Packets [5] Follow Daemon [6] Edit Config file [7] Send a Report [8] Exit")
        command = self.get_input()
        return command

    def get_input(self):
        command = raw_input()
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

    def process_command(self, command):
        if command == "1":
            print "\nMithoren daemon started! Select 4 to view the capture log"
            process = startProcess()


        elif command == "2":
            print("Test2")
            if process:
                process.kill()

        elif command == "3":
            print("Put status here")

        elif command == "4":
            with ('correlation.txt', 'r') as f:
                recent_lines = self.tail(f, 10)
            print recent_lines

        elif command == "5":
            print "Coming soon"
            #infinite loop of readlines()

        elif command == "6":
            print "Coming soon"

        elif command == "7":
            print "Sending email to ....."
            self.email_agent.send_email()

        elif command == "8":
            sys.quit()

        else:
            print('Invalid Command.')

    def run(self):
        command = self.display_start_menu()
        while True:
            self.process_command(command)
            command = second_prompt()





#TODO
# Deal with occaisional resource busy issue
# Move away from using files
#

if __name__ == '__main__':
    email_agent = EmailAgent()
    app = MithrendFrontend(email_agent)
    app.run()

#//TODO
# Make a process to follow logs
