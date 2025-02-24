#!/bin/bash

AEROSPACE_MODE_SERVICE=󰬚
AEROSPACE_MODE_MAIN=󰬔

if [ $SENDER == "aerospace_mode_service" ]; then
  sketchybar --set aerospace_mode icon="$AEROSPACE_MODE_SERVICE"
fi

if [ $SENDER == "aerospace_mode_main" ]; then
  sketchybar --set aerospace_mode icon="$AEROSPACE_MODE_MAIN"
fi
