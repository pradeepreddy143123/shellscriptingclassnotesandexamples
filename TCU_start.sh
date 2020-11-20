#!/bin/bash
#
# Start the App_qcm version QAL03
#

#Dump core file
ulimit -c unlimited

# Stop running processes

killall -q App_qcm

exec ./App_qcm
