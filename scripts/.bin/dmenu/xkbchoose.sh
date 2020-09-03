#!/bin/sh

LAYOUT=$(localectl list-x11-keymap-layouts | dmenu)
setxkbmap -layout ${LAYOUT}
