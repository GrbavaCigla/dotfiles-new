#!/bin/sh

L10N=${1:-us}
echo $L10N

LAYOUT=$(echo $L10N | cut -d "@" -f1)
VARIANT=""

if echo "$L10N" | grep -q "@"
then
	VARIANT=$(echo $L10N | cut -d "@" -f2)
fi

setxkbmap -layout ${LAYOUT} -variant ${VARIANT}
