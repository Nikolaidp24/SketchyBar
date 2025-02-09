#!/bin/bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.color=0x88FF00FF background.border_width=2
else
  sketchybar --set $NAME background.color=0x44FFFFFF background.border_width=0
fi
