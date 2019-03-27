from pwn import *

from collections import deque
import IPython
import sys
import subprocess

def demangle(label):
    out = subprocess.Popen(['c++filt', label], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    sout, serr = out.communicate()
    return sout.strip()


e = ELF('./main.elf')


log.info("Initializing symbols...")
lookup = {}

for label in e.symbols:
    addr = e.symbols[label]
    label = demangle(label)
    lookup[addr] = label

log.info("ready")

prev = False
callStack = deque([""]*20)
for line in sys.stdin:
    a = line.strip()
    if not "DECODE" in a:
        continue

    if prev:
        naddr  = a.split(" ")[1]
        try:
            l = lookup.get(int(naddr, 16))
            #print "{}: called function {}".format(addr, l)
            #print "-"*len(callStack) + l
            #callStack.append(l)
            #prev = False
            if l:
                print "-"*len(callStack) + l
                callStack.append(l)
            else:
                pass
                #print "-"*len(callStack) + naddr
                #callStack.append(naddr)
        except Exception as e:
            print "somwthing went wrong: {}".format(e)

        prev = False

        
    if "jalr" in a:
        #print a
        last = callStack.pop()
        print " "*len(callStack)+ "+ @{}".format(naddr)
        #print "returned from {}".format(last)
        continue

    elif "jal" in a:
        addr = a.split(" ")[1]
        prev = True

#IPython.embed()
