#!/bin/bash

sketchybar --add event aerospace_workspace_change
sketchybar --add event aerospace_update_windows

for sid in $(aerospace list-workspaces --monitor 1); do
  sketchybar --add item space.$sid left \
    --subscribe space.$sid aerospace_workspace_change \
    --set space.$sid \
    drawing=off \
    background.color=0x44ffffff \
    background.corner_radius=10 \
    background.drawing=on \
    background.border_color=0xAAFFFFFF \
    background.border_width=0 \
    background.height=25 \
    icon="$sid" \
    icon.padding_left=10 \
    label.font="sketchybar-app-font:Regular:16.0" \
    label.padding_right=20 \
    label.padding_left=0 \
    label.y_offset=-1 \
    script="$PLUGIN_DIR/aerospace.sh $sid"
done

# Load Icons on startup
for sid in $(aerospace list-workspaces --monitor 1 --empty no); do
  apps=$(aerospace list-windows --workspace "$sid" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')

  sketchybar --set space.$sid drawing=on

  icon_strip=" "
  if [ "${apps}" != "" ]; then
    while read -r app; do
      icon_strip+=" $($PLUGIN_DIR/icon_map.sh "$app")"
    done <<<"${apps}"
  else
    icon_strip=""
  fi
  sketchybar --set space.$sid label="$icon_strip"
done

sketchybar --add item space_separator left \
  --set space_separator icon="􀆊" \
  icon.font="$FONT:Heavy:16.0" \
  icon.padding_left=4 \
  padding_left=10 \
  padding_right=15 \
  label.drawing=off \
  background.drawing=off \
  script="$PLUGIN_DIR/space_windows.sh" \
  --subscribe space_separator aerospace_update_windows \
  --subscribe space_separator aerospace_workspace_change \
  --subscribe space_separator space_windows_change
