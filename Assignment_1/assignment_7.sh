#!/bin/sh

##############################################################################
# Write a shell script that deletes all lines containing a specified word in #
# one or more files supplied as arguments to it.                             #
##############################################################################

sed -i "$2,$3d" $1
