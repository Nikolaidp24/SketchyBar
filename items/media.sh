media=(
	icon.background.drawing=on
	icon.background.image=media.artwork
	icon.background.image.corner_radius=9
	script="$PLUGIN_DIR/media.sh"
	label.max_chars=20
	scroll_texts=on
	icon.background.image.y_offset=-3
	padding_right=20
	updates=on
)

sketchybar --add item media right \
	--set media "${media[@]}" \
	--subscribe media media_change
