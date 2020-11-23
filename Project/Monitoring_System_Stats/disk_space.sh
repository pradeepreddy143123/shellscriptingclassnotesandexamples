#!/bin/bash

#Monitoring disk free space

#The df command shows the current disk space statistics for all of the real and virtual disks on the system.
df

echo \#############prints only the disk space statistics of root file system
df | sed -n '/\/$/p'

echo \##############prints only memory usage stat of root file system
df | sed -n '/\/$/p' | gawk '{print $5}'

echo \##############prints only the number eliminating % symbol so that it can be used in mathematical calculations
df | sed -n '/\/$/p' | gawk '{print $5}' | sed 's/%//'
