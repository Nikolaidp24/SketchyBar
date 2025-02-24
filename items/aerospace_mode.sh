#!/bin/bash

sketchybar --add event aerospace_mode_main
sketchybar --add event aerospace_mode_service

sketchybar --add item aerospace_mode left \
  --set aerospace_mode icon="$AEROSPACE_MODE_MAIN" \
  icon.font="$FONT:Heavy:26.0" \
  icon.padding_left=4 \
  padding_left=60 \
  padding_right=15 \
  icon.drawing=on \
  background.drawing=off \
  script="$PLUGIN_DIR/aerospace_mode.sh" \
  --subscribe aerospace_mode aerospace_mode_main \
  --subscribe aerospace_mode aerospace_mode_service
