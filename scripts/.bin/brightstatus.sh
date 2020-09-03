#!/bin/sh
CMD=$(brightnessctl g)
MAX=$(brightnessctl m)

echo "$(bc -l <<< "scale=4; ${CMD}/${MAX}*100" | awk '{print int($1+0.5)}')%"
