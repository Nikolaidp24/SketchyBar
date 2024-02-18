#!/bin/bash

stats_bracket=(
	background.color="$BACKGROUND_1"
	background.border_color="$BACKGROUND_2"
	padding_left=20
)

sketchybar --add alias "iStat Menus Status,com.bjango.istatmenus.memory" left \
	--rename "iStat Menus Status,com.bjango.istatmenus.memory" ram_alias \
	--set ram_alias icon.drawing=off \
	label.drawing=off \
	background.padding_right=0 \
	background.padding_left=0 \
	width=35 \
	padding_right=10 \
	padding_left=35 \
	alias.color="$WHITE"

sketchybar --add bracket stats temp network_alias ram_alias \
	--set stats "${stats_bracket[@]}"
