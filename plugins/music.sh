#!/bin/bash

CURRENT_ARTIST="$(echo "$INFO" | jq -r '.artist')"
CURRENT_SONG="$(echo "$INFO" | jq -r '.title')"
PLAYER_STATE="$(echo "$INFO" | jq -r '.state')"

if [ "$PLAYER_STATE" = "playing" ]; then
	ICON=􁁒
else
	ICON=􀊄
fi
sketchybar --set "$NAME" label="$CURRENT_SONG - $CURRENT_ARTIST" icon="$ICON" drawing=on
