#!/bin/bash
# status_bracket=(
# 	background.color=$BACKGROUND_1
# 	background.border_color=$BACKGROUND_2
# )
sketchybar --add alias "Control Center,Sound" right \
	--rename "Control Center,Sound" volume_alias \
	--set volume_alias icon.drawing=off \
	label.drawing=off \
	alias.color=$WHITE \
	background.padding_right=0 \
	background.padding_left=0 \
	width=35 \
	align=right
# sketchybar --add bracket status brew github.bell wifi volume_alias battery \
# 	--set status "${status_bracket[@]}"
