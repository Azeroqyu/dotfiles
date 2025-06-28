#!/usr/bin/env bash
declare -a PKGS=(nvim alacritty hypr mako starship waybar)
echo "moving your dotfiles to a .bak"
mv ~/.config/$PKGS ~/.config/$PKGS.bak

