#!/bin/bash

# stats_bracket=(
#   background.color="$BACKGROUND_1"
#   background.border_color="$TRANSPARENT"
#   background.height=30
#   padding_left=20
# )

sketchybar --add alias "iStat Menus Menubar,com.bjango.istatmenus.memory" left \
  --rename "iStat Menus Menubar,com.bjango.istatmenus.memory" ram_alias \
  --set ram_alias icon.drawing=off \
  label.drawing=off \
  background.padding_right=0 \
  background.padding_left=0 \
  width=35 \
  padding_right=30 \
  padding_left=30 \
  alias.color="$WHITE" \
  update_freq=10

# sketchybar --add bracket stats temp_alias network_alias ram_alias \
#   --set stats "${stats_bracket[@]}"
