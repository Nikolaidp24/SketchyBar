#!/bin/bash

keyboard=(
	icon.drawing=off
	label.font="$FONT:Semibold:14.0"
	script="$PLUGIN_DIR/keyboard.sh"
)

sketchybar --add item keyboard right \
	--set keyboard "${keyboard[@]}" \
	--add event keyboard_change "AppleSelectedInputSourcesChangedNotification" \
	--subscribe keyboard keyboard_change
