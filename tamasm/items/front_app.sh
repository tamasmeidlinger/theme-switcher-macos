#!/bin/bash

sketchybar --add item front_app left \
  --set front_app \
  padding_right=0 \
  padding_left=0 \
  icon.drawing=on \
  icon.font="sketchybar-app-font:Regular:17.0" \
  script="$PLUGIN_DIR/front_app.sh" \
  --subscribe front_app front_app_switched
