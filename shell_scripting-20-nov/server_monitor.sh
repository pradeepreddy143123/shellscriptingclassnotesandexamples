#write a network moniter application server_monitor.sh which show the below information
#Os name Architecture version Kernel version Internet status IP Address Memor usage Disk file system usage system uptime

#!/bin/sh
echo -e "\e[31mOs name \e[0m:\n`uname -o`\n"
echo -e "\e[31mArchitecture version\e[0m :\n`uname -m`\n"
echo -e "\e[31mKernel version \e[0m:\n`uname -r`\n"
echo -e "\e[31mIp Adderss\e[0m:\n`hostname -I`\n"
echo -e "\e[31mMemoru usage\e[0m :\n`free -g`\n\n"
echo -e "\e[31msystem uptime \e[0m:\n`uptime`\n"
echo -e "\e[31mDisk file system usage \e[0m:\n`df -h /`\n"
ping -c 2 www.google.com > /dev/null 2> /dev/null && echo "Internet is working" || echo "Internet is not working"
