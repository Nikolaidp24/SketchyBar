#!/bin/bash

sketchybar --add alias "Control Center,Sound" right \
	--rename "Control Center,Sound" volume_alias \
	--set volume_alias icon.drawing=off \
	label.drawing=off \
	alias.color="$WHITE" \
	background.padding_right=0 \
	background.padding_left=0 \
	width=35
