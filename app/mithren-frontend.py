import subprocess
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
    print("[5] Edit Config file")
    print("[6] Exit")
    command = raw_input()
    return command

def second_prompt():
    # Different Functions of Mithrend.py
    print("[1] Start [2] Stop [3] Status [4] View Logged Packets [5] Edit Config file [6] Exit")
    command = raw_input()
    return command

def startProcess():
    #Until daemonized
      with open('/dev/null', 'a') as f:
          process = subprocess.Popen(["python", "mithrend.py"]  , stdout = f, stderr = f)
      #stdout, stderr = process.communicate()
      return process

command = first_prompt()
while True:
    if command == "1":
        print "\nMithoren daemon started! Select 4 to view the capture log\n"
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
        with open('/etc/hosts', 'r') as o:
            o.seek(0,2) # Go to the end of the file
            while True:
                line = o.readline()
                print line
        command = second_prompt()

    elif command == "5":
        execfile('edit.config')
        command = second_prompt()

    else:
        print('Invalid Command.')
        command = second_prompt()
