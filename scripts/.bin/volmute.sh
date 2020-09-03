#!/bin/sh
amixer set Master toggle
pkill -RTMIN+10 dwmblocks
