#!/bin/bash
np=$(/bin/ls ~hmy/.fvwm/wp/*png|wc -l)
rn=$(($RANDOM%$np))
wp=$(/bin/ls -l /home/hmy/.fvwm/wp/ |tail -n $rn|head -n 1|awk '{print $NF}')
fvwm-root /home/hmy/.fvwm/wp/${wp}
