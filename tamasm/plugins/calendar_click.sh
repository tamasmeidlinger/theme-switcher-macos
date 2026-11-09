#!/bin/bash

STATE_FILE="/tmp/sketchybar_calendar_format"

if [ -f "$STATE_FILE" ]; then
  rm "$STATE_FILE"
  FORMAT="[ %b %-d - %a ] %H:%M"
else
  touch "$STATE_FILE"
  FORMAT="[ %Y-%m-%d %a ] %H:%M"
fi

sketchybar --set calendar label="$(date +"$FORMAT")"
