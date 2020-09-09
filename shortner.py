import itertools
import threading
import time
import sys
import os
import pyshorteners
import random
import validators

print('''
               _                    
  ___ __ _ ___| |__   ___ _ __ __ _ 
 / __/ _` / __| '_ \ / _ \ '__/ _` |
| (_| (_| \__ \ |_) |  __/ | | (_| |
 \___\__,_|___/_.__/ \___|_|  \__, |
                              |___/ 

''')

done = False
count = 0
colors=['\033[1;31m','\033[1;32m','\033[1;33m','\033[1;34m','\033[1;35m','\033[1;36m']
def inp():
    print('\033[1;35m')
    x = input('enter url: ')
    return x
x = inp()
def animate():
    for c in itertools.cycle(['|', '/', '-', '\\']):
        if done:
            break
        sys.stdout.write('\rloading ' + c)
        sys.stdout.flush()
        time.sleep(0.1)
    

t = threading.Thread(target=animate)

emp_list = []

def vali(x):
    if(validators.url(x)):
        print('\033[1;32m')
        time.sleep(1.5)
        print("URL is a valid \n")
        count = 1
        validi = x
        return validi
    else:
        print('\033[1;31m')
        print("URL is not valid")
        print("Enter a valid URL")
        #os.system('clear')
        x = inp()
        if(vali(x)):
            return x
        count = 0
x = vali(x)
# if(count==0):
#     x = input('enter url: ')
#     vali(x)
t.start()
#long process here your code
s = pyshorteners.Shortener()
try:
    lin = s.chilpit.short(x)
    emp_list.append(lin)
except:
    pass
try:
    lin = s.clckru.short(x)
    emp_list.append(lin)
except:
    pass
try:
    lin = s.isgd.short(x)
    emp_list.append(lin)
except:
    pass
try:
    lin = s.osdb.short(x)
    emp_list.append(lin)
except:
    pass
try:
    lin = s.qpsru.short(x)
    emp_list.append(lin)
except:
    pass
try:
    lin = s.tinyurl.short(x)
    emp_list.append(lin)
except:
    pass

#to clear screen
#os.system('clear')
print(random.choice(colors))
print("==================================================================")
print("     url shortner in progress, please wait !!               ")
print("     Please keep your data connection active !!    ")
print("==================================================================")

time.sleep(2)
print(random.choice(colors))
print("\n","the shortned url's are:\n")
for i in emp_list:
    if(i=="Invalid link"):
        continue
    print(i,"\n")

done = True








