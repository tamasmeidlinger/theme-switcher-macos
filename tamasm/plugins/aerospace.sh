#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

WORKSPACE=$(/opt/homebrew/bin/aerospace list-workspaces --focused)
sketchybar --set $NAME label="$WORKSPACE"
