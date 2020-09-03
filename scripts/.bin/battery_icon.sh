#!/bin/bash
BAT_CHARGING=""

BAT_ICON_0=""
BAT_ICON_1=""
BAT_ICON_2=""
BAT_ICON_3=""
BAT_ICON_4=""

BAT_ICON_N="5"

CMD=$(acpi)
BATTERY_LEVEL=$(echo ${CMD} | cut -d "," -f2)
BATTERY_STATUS=$(echo ${CMD} | cut -d "," -f1 | cut -d ":" -f2)

_BATTERY_LEVEL=$(echo ${BATTERY_LEVEL} | egrep -o "[0-9]+")
QUERY="scale=0;${_BATTERY_LEVEL}/(100/${BAT_ICON_N})"
DIV=$(bc -l <<< ${QUERY})
ICON=$(eval "echo \$BAT_ICON_${DIV}")

if [ ${BATTERY_STATUS} == "Discharging" ]; then
	echo "${ICON} ${BATTERY_LEVEL}"
fi;
echo "${ICON} ${BATTERY_LEVEL}"
