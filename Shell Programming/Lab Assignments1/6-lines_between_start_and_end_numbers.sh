#!/bin/sh


s=$(expr $2 + 1)
e=$(expr $3 - $s)
tail +$s $1 | head -$e 


