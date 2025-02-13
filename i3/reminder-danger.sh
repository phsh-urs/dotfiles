#!/usr/bin/env bash
#
notify-send "i3: danger mode" \
  -i devices/uninterruptible-power-supply-symbolic \
  -t 2000 \
  -u low \
  "<b>e</b>: exit (logout)
<b>s</b>: suspend
<b>p</b>: power off
<b>r</b>: reboot
<b>x</b>: xrandr"
