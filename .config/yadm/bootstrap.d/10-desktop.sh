#!/bin/sh
. "$HOME/.config/yadm/lib.sh"

seed desktop/sway-theme.conf      "$HOME/.config/sway/config.d/theme.conf"
seed desktop/sway-local.conf      "$HOME/.config/sway/config.d/local.conf"
seed desktop/alacritty-theme.toml "$HOME/.config/alacritty/theme.toml"
seed desktop/fuzzel-theme.ini     "$HOME/.config/fuzzel/theme.ini"
seed desktop/mako-theme           "$HOME/.config/mako/theme"
seed desktop/zathura-theme        "$HOME/.config/zathura/theme"
seed desktop/swaynag-config       "$HOME/.config/swaynag/config"
seed desktop/zprofile.local       "$HOME/.zprofile.local"
