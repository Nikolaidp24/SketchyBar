#!/bin/bash

# Load defined icons
source "$CONFIG_DIR/icons.sh"

# Load defined colors
source "$CONFIG_DIR/colors.sh"

PADDINGS=8
FONT="SF Pro"

# Bar Appearance
bar=(
	color=$TRANSPARENT
	position=top
	topmost=off
	sticky=on
	height=32
	padding_left=$PADDINGS
	padding_right=$PADDINGS
	corner_radius=0
	blur_radius=0
	notch_width=160
)

# Item Defaults
item_defaults=(
	background.color=$TRANSPARENT
	background.padding_left=$(($PADDINGS / 2))
	background.padding_right=$(($PADDINGS / 2))
	icon.padding_left=2
	icon.padding_right=$(($PADDINGS / 2))
	icon.background.corner_radius=4
	icon.background.height=18
	icon.font="$FONT:Regular:12"
	icon.color=$ICON_COLOR
	icon.highlight_color=$HIGHLIGHT
	label.font="$FONT:Regular:12"
	label.color=$LABEL_COLOR
	label.highlight_color=$HIGHLIGHT
	label.padding_left=$(($PADDINGS / 2))
	updates=when_shown
	scroll_texts=on
)

icon_defaults=(
	label.drawing=off
)

notification_defaults=(
	drawing=off
	update_freq=120
	updates=on
	background.color="$(getcolor white 25)"
	background.height=16
	background.corner_radius=16
	icon.font.size=10
	icon.padding_left=$PADDINGS
	icon.padding_right=0
	icon.color="$(getcolor black 75)"
	label.color="$(getcolor black 75)"
	label.padding_right=$PADDINGS
	label.font.size=11
	label.font.style=Bold
)

bracket_defaults=(
	background.height=24
	background.color=$BAR_COLOR
	blur_radius=32
	background.corner_radius=$PADDINGS
)

menu_defaults=(
	popup.blur_radius=32
	popup.background.color=$POPUP_BACKGROUND_COLOR
	popup.background.corner_radius=$PADDINGS
	popup.background.shadow.drawing=on
)

menu_item_defaults=(
	label.font="$FONT:Regular:13"
	padding_left=$PADDINGS
	padding_right=$PADDINGS
	icon.padding_left=0
	icon.color=$HIGHLIGHT
	background.color=$TRANSPARENT
	scroll_texts=on
)

separator=(
	background.height=1
	width=180
	background.color="$(getcolor white 25)"
	background.y_offset=-16
)
