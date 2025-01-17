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
if ! test -f "$HOME/.zshrc"; then
  ln -s "$HOME"/dotfiles/zshrc "$HOME"/.zshrc
fi
if ! test -f "$HOME/.zproflie"; then
  ln -s "$HOME"/dotfiles/zproflie "$HOME"/.zproflie
fi

# vim
# mkdir -p "$HOME"/.vim/tmp/
# mkdir -p "$HOME"/.vim/after/
# mkdir -p "$HOME"/.vim/tags/
# if ! test -d "$HOME/.vim/after/ftplugin"; then
#   ln -s "$HOME"/dotfiles/vim/after/ftplugin "$HOME"/.vim/after/ftplugin
# fi
# if ! test -d "$HOME/.vim/after/syntax"; then
#   ln -s "$HOME"/dotfiles/vim/after/syntax "$HOME"/.vim/after/syntax
# fi
# if ! test -d "$HOME/.vim/colors"; then
#   ln -s "$HOME"/dotfiles/vim/colors "$HOME"/.vim/colors
# fi
# if ! test -d "$HOME/.vim/doc"; then
#   ln -s "$HOME"/dotfiles/vim/doc "$HOME"/.vim/doc
# fi
# if ! test -d "$HOME/.vim/snips"; then
#   ln -s "$HOME"/dotfiles/vim/snips "$HOME"/.vim/snips
# fi
# # stopgap
# if ! test -d "$HOME/.vim/spell"; then
#   if test -d "$HOME"/dotfiles/vim/spell; then
#     ln -s "$HOME"/dotfiles/vim/spell "$HOME"/.vim/spell
#   fi
# fi
# if ! test -f "$HOME/.vim/coc-settings.json"; then
#   ln -s "$HOME"/dotfiles/vim/coc-settings.json "$HOME"/.vim/coc-settings.json
# fi
if ! test -f "$HOME/.vim/vimrc"; then
  ln -s "$HOME"/dotfiles/vim/vimrc "$HOME"/.vim/vimrc
fi
if ! test -f "$HOME/.vimrc"; then
  ln -s "$HOME"/dotfiles/vim/vimrc "$HOME"/.vimrc
fi
