#!/bin/bash

STATE_FILE="/tmp/sketchybar_calendar_format"

if [ -f "$STATE_FILE" ]; then
  rm "$STATE_FILE"
  FORMAT="[ %b %-d - %a ]"
else
  touch "$STATE_FILE"
  FORMAT="[ %Y-%m-%d %a ]"
fi

sketchybar --set calendar label="$(date +"$FORMAT")"
