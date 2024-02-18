#!/bin/bash

temp=(
	script="$PLUGIN_DIR/temp.sh"
	icon=􀇬
	icon.color="$WHITE"
	icon.font="$FONT:Regular:19.0"
	icon.padding_right=0
	padding_right=0
	padding_left=20
	label=" Temp Unkown"
	label.drawing=on
	label.padding_right=5
	update_freq=10
)

sketchybar --add item temp left \
	--set temp "${temp[@]}"
