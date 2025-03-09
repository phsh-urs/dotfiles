#!/usr/bin/env bash

time=2000
stime=4000

# Global volume control
if [ "$1" = k ]; then
  notify-send -i "status/audio-volume-high-symbolic" \
    "Global volume up" \
    "Current volume $(ponymix increase 5)%" -t "$time"
fi
if [ "$1" = j ]; then
  notify-send -i "status/audio-volume-medium-symbolic" \
    "Global volume down" \
    "Current volume $(ponymix decrease 5)%" -t "$time"
fi
if [ "$1" = m ]; then
  notify-send -i "status/audio-volume-muted-symbolic" \
    "Global volume muted" \
    "Once was volume $(ponymix mute)%" -t "$time"
fi
if [ "$1" = w ]; then
  notify-send -i "status/audio-volume-low-symbolic" \
    "Global volume unmuted" \
    "Global volume is $(ponymix unmute)%" -t "$time"
fi

