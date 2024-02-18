#!/bin/bash
TEMP=$(/usr/local/bin/smctemp -c)

# if [ $? -ne 0 ]; then
# 	echo "Something has gone wrong."
# 	exit 1
# fi

sketchybar --set temp label=" ${TEMP}°C"
