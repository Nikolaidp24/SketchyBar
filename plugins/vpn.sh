#!/bin/bash

osascript -e 'tell application "System Events" to tell (value of attribute "AXExtrasMenuBar" of process "PandaFan") to click first menu bar item'
