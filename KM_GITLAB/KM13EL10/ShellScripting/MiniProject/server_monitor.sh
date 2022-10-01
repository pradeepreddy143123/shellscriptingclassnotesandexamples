#!/bin/sh

REMOTEIP=8.8.8.8
DELAY=1
MAXCOUNT=999999999
NUM=0


OSNAME=$(uname -o)
ARCHVER=$(uname -p)
KERVER=$(uname -v)


while [ $NUM -le $MAXCOUNT ]
do

	MEMUSG=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
	DFSU=$(df -h | grep "/dev/sda1" | awk '{print $3}')
	SYSUP=$(uptime -p)	 
	INTSTAT=$(ping -c 1 $REMOTEIP)
	 
	if [ $? -eq 0 ]
	then
		INTERNETSTATUS=CONNECTED
	else    
        	INTERNETSTATUS=DISCONNECTED
	fi

	IPADD=$(hostname -I)
	
	clear
	echo OS name : $OSNAME
	echo Architecture version : $ARCHVER
	echo Kernel version : $KERVER
	echo Internet Status : $INTERNETSTATUS
	echo IP Address : $IPADD
	echo Memory Usage : $MEMUSG
	echo Disk File System Usage : $DFSU
	echo System Uptime : $SYSUP

	NUM=$((NUM+1))
	sleep $DELAY 
done
