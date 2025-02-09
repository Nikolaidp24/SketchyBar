#!/bin/bash

music=(
  script="$PLUGIN_DIR/music.sh"
  label.padding_right=8
  label.font="OperatorMono Nerd Font:Book Italic:15.0"
  padding_right=16
  icon=􁁒
  # drawing=off
  label="Loading…"
  scroll_texts=false
  # background.image=media.artwork
  # background.image.scale=0.9
  # background.image.corner_radius=8
  # background.image.border_color="$TRANSPARENT"
  # background.color="$TRANSPARENT"
  icon.padding_left=36
  label.max_chars=15
  label.align=left
  label.width=130
  --subscribe music media_change system_woke
  # --subscribe music mouse.entered
  # mouse.clicked
  # mouse.exited
  # mouse.exited.global
)

sketchybar \
  --add item music right \
  --set music "${music[@]}"
