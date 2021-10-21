<<question
Mini Project - shell programming:

Write a network monitor application server_monitor.sh which show the below information

OS name
Architecture version
Kernel version
Internet status
IP Address
Memory Usage
Disk file systems usage
system uptime

question

#!/bin/sh

echo ""
echo -n "\033[31mOS name: \033[0m"
grep '^NAME' /etc/os-release
echo ""
echo -n "\033[32mArchitecture version: \033[0m"
uname -m
echo ""
echo -n "\033[33mKernel Version: \033[0m"
uname -r
echo ""
echo -n "\033[34mInternet Status: \033[0m"
ping -c 1 www.google.com > /dev/null 2> /dev/null
if [ $? -eq 0 ]
then
	echo "CONNECTED"
else
	echo "NOT CONNECTED"
fi
echo ""
echo -n "\033[31mIP Address: \033[0m"
ip a
echo
echo "\033[32mMemory usage:\033[0m"
free -m
echo
cd ../
echo "\033[33mDisk usage and free space: \033[0m"
df -h lsp
echo
echo -n "\033[34mUptime: \033[0m"
uptime -p
echo
