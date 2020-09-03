#!/bin/sh

maim "${HOME}/.screenshots/$(date +%s).jpg" | xclip -selection clipboard -t image/png 
