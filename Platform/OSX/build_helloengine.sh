#!/bin/sh

clang -lxcb -o helloengine_cpu_xcb helloengine_cpu_xcb.c

# Start x-server by XQuartz
while ! pgrep -f XQuartz > /dev/null 
do 
    open -a XQuartz
    sleep 2
done

# Running window
./helloengine_cpu_xcb