#!/bin/bash

sketchybar --add item battery right \
  --set battery update_freq=120 \
  padding_right=-6 \
  script="$PLUGIN_DIR/battery.sh" \
  --subscribe battery system_woke power_source_change

# Add an item to act as a separator on the left side
sketchybar --add item separator2 right \
  --set separator2 icon="|" \
  icon.color=0x88666666 \
  label.drawing=off \
  background.drawing=off

sketchybar --move separator2 before battery
