#!/usr/bin/env bash

set -o xtrace

if pgrep -U "$(whoami)" i3lock >/dev/null; then
  echo "Already running"
  exit 0
fi

xset dpms 10 0 0
killall picom

# mute microphone so I'm not recorded while afk
ponymix -t source mute >/dev/null

# clear the clipboards for security reasons
xsel --clipboard --delete
xsel --primary --delete
xsel --secondary --delete

dunstctl set-paused true

#################################################
# RUN THE LOCKER
#################################################

xset dpms force off
i3lock \
  --beep \
  --ignore-empty-password \
  --show-failed-attempts \
  --nofork \
  --color=202020

#################################################
# POST LOCK CLEANUP
#################################################

dunstctl set-paused false
xset dpms 900 900 900
picom -b --no-fading-openclose
i3-msg restart
