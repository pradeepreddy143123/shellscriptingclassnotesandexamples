#!/bin/sh
   
   #1. Write shell script that will add two nos, which are supplied as command line argument, and     if this two nos are not given show error and its usage.
   
   
  if [ $# -eq 2  ]
   then
   
             echo `expr $1 + $2`
  
    else
             echo 'error'
   fi