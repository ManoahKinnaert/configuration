#!/usr/bin/env bash

# Define options for Wofi
CHOSEN=$(printf "Shut Down\nReboot\nLock" | wofi --dmenu --prompt "Power:")

# Convert response to lowercase and apply via powerprofilesctl
case "$CHOSEN" in
    "Shut Down") poweroff;;
    "Reboot")    reboot;;
    "Lock") hyprlock ;;
esac

