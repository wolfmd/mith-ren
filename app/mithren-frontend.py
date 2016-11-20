import subprocess
import sys
#Welcome message.

print "\n======================================================================"
print "=======================    MITH-REN    ==============================="
print "======================================================================\n"
print('Please enter the number of which action you wish Mithoren to perform.')

def first_prompt():
    print("[1] Start")
    print("[2] Stop")
    # Different Functions of Mithrend.py
    print("[3] Status")
    print("[4] View Logged Packets")
    print("[5] Follow Daemon")
    print("[6] Edit Config file")
    print("[7] Exit")
    command = raw_input()
    return command

def second_prompt():
    # Different Functions of Mithrend.py
    print("\n[1] Start [2] Stop [3] Status [4] View Logged Packets [5] Follow Daemon [6] Edit Config file [7] Exit")
    command = raw_input()
    return command

def startProcess():
    #Until daemonized
      with open('debugdemon.log', 'w') as f:
          process = subprocess.Popen(["python", "mithrend.py"]  , stdout = f, stderr = f)
      #stdout, stderr = process.communicate()
      return process

def readlines():
    with open('correlation.txt', "r") as f:
        BLOCK_SIZE = 1024
        f.seek(0, 2)
        block_end_byte = f.tell()
        lines_to_go = 10
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
        return '\n'.join(all_read_text.splitlines()[-10:])

command = first_prompt()
while True:
    if command == "1":
        print "\nMithoren daemon started! Select 4 to view the capture log"
        process = startProcess()
        command = second_prompt()

    elif command == "2":
        print("Test2")
        if process:
            process.kill()
        command = second_prompt()

    elif command == "3":
        print("Put status here")
        command = second_prompt()

    elif command == "4":
        tail = readlines()
        print tail
        command = second_prompt()

    elif command == "5":
        print "Coming soon"
        #infinite loop of readlines()

    elif command == "6":
        execfile('edit.config')
        command = second_prompt()

    elif command == "7":
        sys.quit()

    else:
        print('Invalid Command.')
        command = second_prompt()


#//TODO
# Make a process to follow logs
