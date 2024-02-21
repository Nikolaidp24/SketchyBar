#!/bin/bash

window_state() {
	source "$CONFIG_DIR/colors.sh"
	source "$CONFIG_DIR/icons.sh"

	SPACE=$(yabai -m query --spaces --space)
	WINDOW=$(yabai -m query --windows --window)
	STACK_INDEX=$(echo "$WINDOW" | jq '.["stack-index"]')

	COLOR=$BAR_BORDER_COLOR
	ICON=""

	if [ "$(echo "$WINDOW" | jq '.["is-floating"]')" = "true" ]; then
		ICON=$YABAI_FLOAT
		COLOR=$RED
	elif [ "$(echo "$SPACE" | jq '.["type"]' | cut -d'"' -f 2)" = "float" ]; then
		ICON=$YABAI_FLOAT
		COLOR=$RED
		# LABEL="float"
	elif [ "$(echo "$SPACE" | jq '.["type"]' | cut -d'"' -f 2)" = "bsp" ]; then
		ICON=$YABAI_GRID
		COLOR=$BLUE
		# LABEL="bsp"
	elif [[ $STACK_INDEX -gt 0 ]]; then
		LAST_STACK_INDEX=$(yabai -m query --windows --window stack.last | jq '.["stack-index"]')
		ICON=$YABAI_STACK
		LABEL="$(printf "[%s/%s]" "$STACK_INDEX" "$LAST_STACK_INDEX")"
		COLOR=$MAGENTA
	fi

	args=(--set "$NAME" icon.color="$COLOR")

	[ -z "$LABEL" ] && args+=(label.width=0) ||
		args+=(label="$LABEL"
			label.width=40
			label.color="$COLOR"
			label.font.size=12.0
			label.y_offset=5
			label.padding_left=-1)

	[ -z "$ICON" ] && args+=(icon.width=0) ||
		args+=(icon="$ICON" icon.width=30)

	sketchybar -m "${args[@]}"
}

window_state
