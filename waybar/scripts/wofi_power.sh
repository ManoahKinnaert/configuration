#!/usr/bin/env bash

# Define options for Wofi
CHOSEN=$(printf "Performance\nBalanced\nPower-Saver" | wofi --dmenu --prompt "Select Power Profile:")

# Convert response to lowercase and apply via powerprofilesctl
case "$CHOSEN" in
    Performance) powerprofilesctl set performance ;;
    Balanced)    powerprofilesctl set balanced ;;
    "Power-Saver") powerprofilesctl set power-saver ;;
esac

