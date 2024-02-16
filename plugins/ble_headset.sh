#!/bin/bash

# Full path to blueutil executable
# blueutil_path="/opt/homebrew/bin/blueutil" # Adjust the path as necessary

# Bluetooth device address of the headphone
# headphone_address="ac-80-0a-ba-8e-a7" # Replace with your headphone's address

# Function to check if Bluetooth headphone is connected
check_bluetooth_headphone() {
	DEVICES=$(system_profiler SPBluetoothDataType -json -detailLevel basic 2>/dev/null | jq '.SPBluetoothDataType[0].device_connected[]? | select( .[] | .device_minorType == "Headset") | keys[]')
	if [ "$DEVICES" = "" ]; then
		sketchybar --set $NAME icon.drawing=off
	else
		sketchybar --set $NAME label="" icon.drawing=on background.padding_left=1 background.padding_right=4
	fi
}

# Call the function to check Bluetooth headphone status
check_bluetooth_headphone
