#Welcome message.
print('Please enter the number of which action you wish Mithren to perform.')


# Different Functions of Mithrend.py
print("[1]Start [2]Stop [3]Status [4]Logged Packets [5] Edit Config file")

def startProcess(self, command, file):
    #Until daemonized
      process = subprocess.Popen(["python", "mithrend.py"]  , stdout = subprocess.PIPE, stderr = subprocess.PIPE)
      stdout, stderr = process.communicate()
      return process

command = raw_input()
if command == "1":
    print("Test1")
    process = startProcess()

elif command == "2":
    print("Test2")
    if process:
        process.kill()

elif command == "3":
    print("Put status here")
    if process:

elif command == "4":
    execfile('correlation.txt')

elif command == "5":
    execfile('edit.config')

else:
    print('Invalid Command.')
