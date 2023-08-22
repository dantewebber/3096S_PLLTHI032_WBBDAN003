import os

os.system("python3 Python/PythonHeterodyning.py")
#os.system("cd C && make threaded")
os.system("cd C && make run_threaded")

f1 = open("/home/pi/Documents/UCT/EEE3096S/GitCopy2/EEE3096S-2023/WorkPackage1/Python/result.txt", "r")
f2 = open("/home/pi/Documents/UCT/EEE3096S/GitCopy2/EEE3096S-2023/WorkPackage1/C/result.txt", "r")

f1_data = f1.readlines()
f2_data = f2.readlines()

i = 0

for line1 in f1_data:
    i += 1
    
    line2 = f2_data[i-1]
    if line1 == line2:
        #print("Line ", i, ": IDENTICAL")
        continue
    else:
        print("Line ", i, ":")
        print("\tFile 1:", line1, end='')
        print("\tFile 2:", line2, end='')

f1.close()
f2.close()