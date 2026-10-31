#!/bin/bash

sketchybar --add event aerospace_workspace_change
sketchybar --add item space left \
  --subscribe space aerospace_workspace_change \
  --set space \
  background.corner_radius=5 \
  background.height=24 \
  icon="" \
  background.drawing=on \
  icon.drawing=on \
  padding_right=-6 \
  padding_left=3 \
  script="$CONFIG_DIR/plugins/aerospace.sh"

# Add an item to act as a separator on the left side
sketchybar --add item separator left \
  --set separator icon="|" \
  icon.color=0x88666666 \
  label.drawing=off \
  background.drawing=off
