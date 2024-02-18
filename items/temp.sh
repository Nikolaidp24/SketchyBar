#!/bin/bash

temp=(
	script="$PLUGIN_DIR/temp.sh"
	icon=":cpu:"
	icon.font="sketchybar-app-font:Regular:15.0"
	icon.font.size=15.0
	icon.padding_right=0
	padding_right=0
	padding_left=10
	label=" Temp Unkown"
	label.drawing=on
	label.padding_right=5
	update_freq=10
)

sketchybar --add item temp left \
	--set temp "${temp[@]}"
