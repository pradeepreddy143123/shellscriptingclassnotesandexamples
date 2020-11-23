#!/bin/bash

#Write a network monitor application server_monitor.sh which show the below information

#OS name
#Architecture version
#Kernel version
#Internet status
#IP Address
#Memory Usage
#Disk file systems usage
#system uptime


OS_name=$(uname -o)
Architecture_Version=$(uname -m)
Kernel_Version=$(uname -r)
MemoryUsage=$(df | sed -n '/\/$/p')
DiskFileSystemUsage=$(df)
Sys_Uptime=uptime
colorreset=$(tput sgr0)

echo -e '\e[32m'"Operating System Type:" $colorreset "$OS_name"
echo -e '\e[32m'"Architecture Version:" $colorreset $Architecture_Version
echo -e '\e[32m'"Kernel Version:" $colorreset $Kernel_Version
echo -e '\e[32m'"Memory Usage:" $colorreset $MemoryUsage
