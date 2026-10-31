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
  padding_right=6 \
  padding_left=4 \
  script="$CONFIG_DIR/plugins/aerospace.sh"
