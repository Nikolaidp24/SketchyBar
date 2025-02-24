#!/bin/bash

if [ $SENDER = "aerospace_workspace_change" ]; then
  prevapps=$(aerospace list-windows --workspace "$PREV_WORKSPACE" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')
  if [ "${prevapps}" != "" ]; then
    sketchybar --set space.$PREV_WORKSPACE drawing=on
  else
    sketchybar --set space.$PREV_WORKSPACE drawing=off
  fi
  sketchybar --set space.$FOCUSED_WORKSPACE drawing=on
  focused_apps=$(aerospace list-windows --workspace "$FOCUSED_WORKSPACE" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')
  if [ "${focused_apps}" = "" ]; then
    sketchybar --set space.$FOCUSED_WORKSPACE background.color=0x88FF00FF background.border_width=2
  fi
fi

if [ $SENDER = "aerospace_update_windows" ]; then
  VISIBLE_WORKSPACE=$(aerospace list-workspaces --monitor 1 --empty no)
  for ws in $VISIBLE_WORKSPACE; do
    apps=$(aerospace list-windows --workspace "$ws" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')
    sketchybar --set space.$ws drawing=on
    icons_all=" "
    if [ "${apps}" != "" ]; then
      while read -r app; do
        icons_all="$icons_all $(~/.config/sketchybar/icon_map.sh "$app")"
      done <<<"${apps}"
    else
      icons_all=""
    fi
    sketchybar --set space.$ws label="$icons_all"
  done
fi
