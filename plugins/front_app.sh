#!/bin/bash

if [ "$SENDER" = "front_app_switched" ]; then
	sketchybar --set "$NAME" icon.background.image="app.$INFO"
fi
