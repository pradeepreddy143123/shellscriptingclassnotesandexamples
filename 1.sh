!#/bin/bash

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
NC='\033[0m'              # No Color
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

BRedU='\033[4;31m'         # Underline


echo " ${Cyan} do you want proceed please enter y"
read yess
while [ $yess == y ] || [ $yess == Y ];do

echo " Please Enter Your Choise Base on the :\n
\n 1) copy the Files \n 
\n 2) Delete the unmated Files
\n 3) what extn you created that folder that folder content it will show
\n 4) Simulation Run __with modified(manually)__open another terminal and modify the *.pc file
\n 5) zip the results
\n 6) Run status
\n 7) exit "

# now it will start the script as your choice

read num
case $num in
# Coping the full content of the folder
1)
echo -n "${Blue} Please Enter the Valid Directory >"
read $1
if [ -d $1 ];then
cp -R $1 $1_SF_Update
else
echo -n "No such file or Directory"
fi
echo "Do want back back Y or n "
read yess

# deleting the unwanted Files.please give extensions

2)
echo " {Red} Deleting unwanted Files "
rm -vf $1_SF_Update/*.out
rm -vf $1_SF_Update/*.cfg
rm -vf $1_SF_Update/*.msg

echo "Do want back back Y or n "
read yess

# it will show the remaining thing of the destinated Directory

3)
echo -n " {Green} Please check copeid files content "
ls -lTr $1_SF_Update
echo -n " {Yellow} Do want back back Y or n "
read yess

4)
echo -n " Your Simulation Started "
(Command)
echo "Do want back back Y or n "
read yess

5)