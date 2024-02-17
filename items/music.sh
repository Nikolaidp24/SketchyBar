#!/bin/bash

# Load global styles, colors and icons
source "$CONFIG_DIR/globalstyles.sh"

music=(
	"${bracket_defaults[@]}"
	script="$PLUGIN_DIR/music.sh"
	popup.align=center
	padding_left=0
	label.padding_right=$PADDINGS
	padding_right=$(($PADDINGS * 2))
	icon=􁁒
	drawing=off
	label="Loading…"
	background.image=media.artwork
	background.image.scale=0.75
	background.image.corner_radius=$PADDINGS
	background.color=$TRANSPARENT
	icon.padding_left=32
	label.max_chars=20
	updates=on
	--subscribe music media_change
	# --subscribe music mouse.entered
	# mouse.clicked
	# mouse.exited
	# mouse.exited.global
)

sketchybar \
	--add item music right \
	--set music "${music[@]}" \
	--set music "${menu_defaults[@]}" \
	--add item music.cover popup.music \
	--add item music.artist popup.music \
	--add item music.title popup.music \
	--add item music.album popup.music
