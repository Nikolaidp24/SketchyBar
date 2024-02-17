#!/bin/bash

source "$CONFIG_DIR/colors.sh" # Loads all defined colors
source "$CONFIG_DIR/icons.sh"  # Loads all defined icons
FONT="SF Pro"
network_down=(
	padding_left=20
	highlight.padding_left=20
	# background.padding_left=7
	# background.highlight.padding_left=7
	y_offset=-7
	label.font="$FONT:Heavy:10.0"
	label.color="$WHITE"
	icon=􀄥
	icon.color="$GREEN"
	icon.highlight_color="$BLUE"
	update_freq=1
)

network_up=(
	padding_left=-77
	# background.highlight.padding_left=7
	y_offset=7
	label.font="$FONT:Heavy:10.0"
	label.color="$WHITE"
	icon=􀄤
	icon.color="$GREEN"
	icon.highlight_color="$BLUE"
	update_freq=1
	script="$PLUGIN_DIR/network.sh"
)

sketchybar --add item network.down left \
	--set network.down "${network_down[@]}" \
	--add item network.up left \
	--set network.up "${network_up[@]}"
