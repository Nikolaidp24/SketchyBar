#!/bin/bash

calendar=(
  icon=cal
  icon.font="$FONT:Bold:14.0"
  icon.padding_left=20
  icon.padding_right=20
  label.width=45
  label.align=right
  label.padding_right=20
  padding_left=15
  update_freq=30
  script="$PLUGIN_DIR/calendar.sh"
  # click_script="$PLUGIN_DIR/calendar_click.sh"
  background.color="$BACKGROUND_1"
  background.border_color="$TRANSPARENT"
  background.height=30
)

sketchybar --add item calendar right \
  --set calendar "${calendar[@]}" \
  --subscribe calendar system_woke
