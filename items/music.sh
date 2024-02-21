#!/bin/bash

# Load global styles, colors and icons
source "$CONFIG_DIR/globalstyles.sh"

music=(
	script="$PLUGIN_DIR/music.sh"
	label.padding_right="$PADDINGS"
	label.font="OperatorMono Nerd Font:Book Italic:15.0"
	padding_right="$PADDINGS" * 2
	icon=􁁒
	# drawing=off
	label="Loading…"
	scroll_texts=false
	background.image=media.artwork
	background.image.scale=0.75
	background.image.corner_radius="$PADDINGS"
	background.color="$TRANSPARENT"
	icon.padding_left=32
	label.max_chars=15
	label.align=left
	label.width=150
	--subscribe music media_change system_woke
	# --subscribe music mouse.entered
	# mouse.clicked
	# mouse.exited
	# mouse.exited.global
)

sketchybar \
	--add item music right \
	--set music "${music[@]}"
# --set music "${menu_defaults[@]}" \
# --add item music.cover popup.music \
# --add item music.artist popup.music \
# --add item music.title popup.music \
# --add item music.album popup.music
