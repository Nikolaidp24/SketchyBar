#!/bin/bash

# Trigger the brew_udpate event when brew update or upgrade is run from cmdline
# e.g. via function in .zshrc

brew=(
	icon=􀐛
	label=Brew
	# label.font="OperatorMono Nerd Font:Bold Italic:14.0"
	icon.color="$BLUE"
	padding_right=10
	padding_left=0
	script="$PLUGIN_DIR/brew.sh"
)

sketchybar --add event brew_update \
	--add item brew right \
	--set brew "${brew[@]}" \
	--subscribe brew brew_update
