#!/usr/bin/env bash

xss-lock -n ~/dotfiles/sh-scripts/lock-warning.sh -- ~/dotfiles/sh-scripts/fuzzy-lock.sh &

picom -b --no-fading-openclose
xbanish -t 4 -s &
~/dotfiles/sh-scripts/redshift.sh
dunst &
