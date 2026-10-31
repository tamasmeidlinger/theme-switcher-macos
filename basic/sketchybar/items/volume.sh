!#/bin/bash

sketchybar --add item volume right \
  --set volume script="$PLUGIN_DIR/volume.sh" \
  padding_left=0 \
  padding_right=-6 \
  --subscribe volume volume_change

sketchybar --add item separator3 right \
  --set separator3 icon="|" \
  icon.color=0x88666666 \
  label.drawing=off \
  background.drawing=off

sketchybar --move separator3 before volume
