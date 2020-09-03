#!/bin/bash
CMD=$(acpi)
BATTERY_LEVEL=$(echo ${CMD} | cut -d "," -f2)
echo "${BATTERY_LEVEL}" | awk '{print $1}'
