#!/bin/bash

sketchybar --add alias "PandaFan,Item-0" right \
  --rename "PandaFan,Item-0" vpn_alias \
  --set vpn_alias icon.drawing=on \
  label.drawing=off \
  alias.color="$WHITE" \
  background.padding_right=0 \
  background.padding_left=0 \
  width=25 \
  --subscribe vpn_alias system_woke wifi_change
