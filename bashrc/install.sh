#!/usr/bin/env bash

backup() {
    DOTS=("hypr" "nvim" "waybar" "rofi" "ghostty" "alacritty" "mako" "utils" "themes")
    HOME_FILES=(".tmux.conf" ".bashrc")
    
    mkdir -p ~/.config/backup
    
    for dir in "${DOTS[@]}"; do
        mv ~/.config/"$dir" ~/.config/backup/ 
    done
    
    for file in "${HOME_FILES[@]}"; do
        mv ~/"$file" ~/.config/backup/
    done
    
    mv ~/.config/starship.toml ~/.config/backup/ 
}

case "$1" in
    backup)
        backup
        ;;
    install)
        backup
        [ -x "$(command -v yay)" ] && yay -S --noconfirm --needed - < dependencies.list
        stow .
        stow --dotfiles --target="$HOME" bashrc
        echo "Done."
        ;;
    *)
        echo "Usage: $0 {backup|install}"
        exit 1
        ;;
esac
