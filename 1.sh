!#/bin/bash

echo "do you want proceed please enter y"
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

read num
case $num in

1)
echo -n "Please Enter the Valid Directory >"
read $1
if [ -d $1 ];then
cp -R $1 $1_SF_Update
else
echo -n "No such file or Directory"
fi
echo "Do want back back Y or n "
read yess


2)
echo " Deleting unwanted Files "
rm -vf $1_SF_Update/*.out
rm -vf $1_SF_Update/*.cfg
rm -vf $1_SF_Update/*.msg
rm -vf $1_SF_Update/*.THP

echo "Do want back back Y or n "
read yess

3)
echo " Please check copeid files content "
ls -lTr $1_SF_Update
echo "Do want back back Y or n "
read yess
4)