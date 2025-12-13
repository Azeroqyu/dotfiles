#!/usr/bin/env bash

THEME_DIR="$HOME/dotfiles/themes"
CONFIG_DIR="$HOME/dotfiles"

SELECTED_THEME=$(find "$THEME_DIR" -maxdepth 1 -type d ! -name ".*" ! -path "$THEME_DIR" -exec basename {} \; | sort | rofi -dmenu -i -p "Themes")
[ -z "$SELECTED_THEME" ] && exit 0


THEME_PATH="$THEME_DIR/$SELECTED_THEME"


ln -sf "$THEME_PATH/hypr/colors.conf" "$CONFIG_DIR/hypr/colors.conf"
ln -sf "$THEME_PATH/rofi/colors.rasi" "$CONFIG_DIR/rofi/colors.rasi"
ln -sf "$THEME_PATH/waybar/colors.css" "$CONFIG_DIR/waybar/colors.css"
ln -sf "$THEME_PATH/alacritty/colors.toml" "$CONFIG_DIR/alacritty/colors.toml"
ln -sf "$THEME_PATH/ghostty/theme.conf" "$CONFIG_DIR/ghostty/theme.conf"
#mako breaks for some reason if i symlink it
cp "$THEME_PATH/mako/config" "$CONFIG_DIR/mako/config"


notify-send "Theme Switched" "Applied theme: $SELECTED_THEME"
makoctl reload
pkill waybar && hyprctl dispatch exec waybar
hyprctl reload
