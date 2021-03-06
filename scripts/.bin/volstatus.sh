#!/bin/sh
VOLSTATUS=$(amixer | egrep "Left:|Right:" | grep -i Playback | awk '{print $5}' | egrep -o "[0-9]+")
RIGHT=$(echo ${VOLSTATUS} | awk '{print $1}')
LEFT=$(echo ${VOLSTATUS} | awk '{print $2}')
echo "$(echo "${LEFT}/2+${RIGHT}/2" | bc | awk '{print int($1+0.5)}')%"
