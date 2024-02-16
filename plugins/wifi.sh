#!/bin/bash

update() {
	source "$CONFIG_DIR/icons.sh"
	# CURRENT_WIFI="$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)"
	SSID="$(/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | awk -F ' SSID: ' '/ SSID: / {print $2}')"
	IP="$(ipconfig getifaddr en0)"
	# CURR_TX="$(echo "$CURRENT_WIFI" | grep -o "lastTxRate: .*" | sed 's/^lastTxRate: //')"
	ICON="$([ -n "$IP" ] && echo "$WIFI_CONNECTED" || echo "$WIFI_DISCONNECTED")"
	LABEL="$([ -n "$IP" ] && echo "$SSID ($IP)" || echo "Disconnected")"

	sketchybar --set $NAME icon="$ICON" label="$LABEL"
}

click() {
	CURRENT_WIDTH="$(sketchybar --query $NAME | jq -r .label.width)"

	WIDTH=0
	if [ "$CURRENT_WIDTH" -eq "0" ]; then
		WIDTH=dynamic
	fi

	sketchybar --animate sin 20 --set $NAME label.width="$WIDTH"
}

case "$SENDER" in
"wifi_change")
	update
	;;
"mouse.clicked")
	click
	;;
esac
