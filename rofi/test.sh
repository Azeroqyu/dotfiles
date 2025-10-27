#!/usr/bin/env bash
WALLPAPER_DIR="$HOME/dotfiles/hypr/wallpapers/"
wallpapers()
{
find "$WALLPAPER_DIR" -type f 
}
if [ -z "$@" ]; then
    wallpapers | while read -r file; do 
        echo -e "$(basename "$file")\0icon\x1f$file"
    done 
else 	
	WALLPAPER="$@"
	notify-send "wallpaper changed to: $WALLPAPER"
	wallpaper_path=$(find "$WALLPAPER_DIR" -name "$WALLPAPER" | head -1)
	hyprctl hyprpaper reload ,"$wallpaper_path"
exit 0
fi
