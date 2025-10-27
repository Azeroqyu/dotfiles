#!/usr/bin/env bash
echo "installing dependencies..."

# switch yay to your pkg manager 
#
yay -S --noconfirm --needed - < dependencies.list

read -p "would you like to apply my theming? [Y/n]" yn
case $yn in
	[yY] )	echo "Proceeding with instalation...";
		stow .
		exit 0
		;;
	[nN] )	echo "Instalation cancelled, exiting...";
		exit 0
		;;
	*)	echo "Proceeding with instalation...";
		stow .
		exit 0
		;;
esac

