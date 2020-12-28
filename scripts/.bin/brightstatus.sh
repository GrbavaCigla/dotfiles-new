#!/bin/sh
CMD=$(brightnessctl g)
MAX=$(brightnessctl m)

echo "$(echo "scale=4; ${CMD}/${MAX}*100" | bc | awk '{print int($1+0.5)}')%"
