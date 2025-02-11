#!/bin/bash

if [ $SENDER = "aerospace_workspace_change" ]; then
  if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.color=0x88FF00FF background.border_width=2
  else
    sketchybar --set $NAME background.color=0x44FFFFFF background.border_width=0
  fi
else
  CURRENT_WORKSPACE=$(aerospace list-workspaces --focused)
  if [ "$1" = "$CURRENT_WORKSPACE" ]; then
    sketchybar --set $NAME background.color=0x88FF00FF background.border_width=2
  else
    sketchybar --set $NAME background.color=0x44FFFFFF background.border_width=0
  fi
fi
