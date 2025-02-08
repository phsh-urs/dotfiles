#!/bin/sh

# Use at your own risk ;)
# makes many symlinks

set -e
set -o xtrace

# symlink in home
if ! test -f "$HOME/.bashrc"; then ln -s "$HOME"/dotfiles/bashrc "$HOME"/.bashrc; fi
if ! test -f "$HOME/.xprofile"; then ln -s "$HOME"/dotfiles/xprofile "$HOME"/.xprofile; fi
if ! test -f "$HOME/.xinitrc"; then ln -s "$HOME"/dotfiles/xinitrc "$HOME"/.xinitrc; fi

# file/dir in .config
mkdir -p .config
if ! test -d "$HOME/.config/dunst"; then ln -s "$HOME"/dotfiles/dunst "$HOME"/.config/dunst; fi
if ! test -d "$HOME/.config/fish"; then ln -s "$HOME"/dotfiles/fish "$HOME"/.config/fish; fi
if ! test -d "$HOME/.config/i3"; then ln -s "$HOME"/dotfiles/i3 "$HOME"/.config/i3; fi
if ! test -d "$HOME/.config/zathura"; then ln -s "$HOME"/dotfiles/zathura "$HOME"/.config/zathura; fi

# nested config
if ! test -f "$HOME/.config/picom.conf"; then
  ln -s "$HOME"/dotfiles/picom.conf "$HOME"/.config/picom.conf
fi
if ! test -d "$HOME/.config/py3status"; then
  mkdir -p "$HOME"/.config/py3status
  ln -s "$HOME/dotfiles/py3status/py3status.conf" "$HOME"/.config/py3status/config
fi
if ! test -d "$HOME/.config/alacritty"; then
  mkdir -p "$HOME"/.config/alcritty/
  ln -s "$HOME"/dotfiles/terminal "$HOME"/.config/xfce4/terminal
fi
if ! test -f "$HOME/.config/redshift/redshift.conf"; then
  mkdir -p "$HOME"/.config/redshift/
  ln -s "$HOME"/dotfiles/redshift.conf "$HOME"/.config/redshift/redshift.conf
fi

# zsh (not being used)
#  if ! test -f "$HOME/.zshrc"; then
#  ln -s "$HOME"/dotfiles/zshrc "$HOME"/.zshrc
#fi
#if ! test -f "$HOME/.zprofile"; then
#  ln -s "$HOME"/dotfiles/zprofile "$HOME"/.zprofile
#fi

if ! test -f "$HOME/.vimrc"; then
  ln -s "$HOME"/dotfiles/vimrc "$HOME"/.vimrc
fi
