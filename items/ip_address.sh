ip_address=(
	script="$PLUGIN_DIR/ip_address.sh"
	update_freq=30
	padding_left=2
	padding_right=8
	background.border_width=0
	background.corner_radius=6
	background.height=24
	icon.highlight=on
	label.highlight=on
)

sketchybar --add item ip_address right \
	--set ip_address "${ip_address[@]}" \
	--subscribe ip_address wifi_change
