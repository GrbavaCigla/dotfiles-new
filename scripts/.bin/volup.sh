#!/bin/sh
pactl set-sink-volume 0 +5%
pkill -RTMIN+10 dwmblocks
