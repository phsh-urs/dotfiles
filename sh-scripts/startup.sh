#!/usr/bin/env bash

picom -b --no-fading-openclose
xbanish -m se -t 4 -s &
~/dotfiles/sh-scripts/redshift.sh
dunst &
