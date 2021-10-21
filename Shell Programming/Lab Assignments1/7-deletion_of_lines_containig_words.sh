#!/bin/sh

echo "enter the word"
read word
cat $@ | grep -v $word 
