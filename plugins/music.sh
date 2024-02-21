#!/bin/bash

PLAYER_STATE="$(echo $INFO | jq -r '.state')"
CURRENT_SONG="$(echo $INFO | jq -r '.title + "-" + .artist')"

if [ "$PLAYER_STATE" = "playing" ]; then
	ICON=􁁒
else
	ICON=􀊄
fi
sketchybar --set $NAME label="$CURRENT_SONG" icon="$ICON" drawing=on
