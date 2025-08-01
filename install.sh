#!/usr/bin/env bash
#This script installs the dependencies needed for my dotfiles
declare -a PKGS=(nvim alacritty hypr mako starship waybar tmux kitty)
#checking if the packages needed are installed, i made this for arch, change "yay" for your prefered package manager.
echo "installing dependencies..."
yay -S --noconfirm --needed - < dependencies.list
#applying the theme
read -p "would you like to apply my theming? [Y/n]" yn
case $yn in
	[yY] )	echo "Proceeding with instalation...";
		stow .
		;;
	[nN] )	echo "Instalation cancelled, exiting...";
		;;
	*)	echo "Proceeding with instalation...";
		stow .
		;;
esac

