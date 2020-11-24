#!/bin/sh

##########################################################################
# This shell script display the following information:                   #
#                                                                        #
# OS name                                                                #
# Architecture version                                                   #
# Kernel version                                                         #
# Internet status                                                        #
# IP Address                                                             #
# Memory Usage                                                           #
# Disk file systems usage                                                #
# System uptime                                                          #
#                                                                        #
##########################################################################

clear

# 1. OS name
echo "OS Name: "`cat "/etc/os-release" | grep -w "NAME" | sed 's/NAME=//g'`

# 2. Architecture Version
echo "Achitecture Version: "`uname -m`

# 3. Kernel Version
echo "Kernel Version: "$(uname -mrs)

# 4. Internet Status
echo "Internet Status: "
echo "Pinging www.google.com"
echo "======================"
if ping -q -c 1 -W 1 google.com >/dev/null; then
  	echo "The network is up"
else
	echo "The network is down"
fi

echo "======================"

# 5. IP Address

echo "IP Address: "`hostname -i`

# 6. Memory Usage
echo "Memory Usage in MB: "
free -m

# 7. Disk file system usage
echo "Disk file system usage: "
df -h /

# 8. System Up time
echo "Up Time: "`uptime -p`
