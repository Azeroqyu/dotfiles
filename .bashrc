#!/usr/bin/env bash
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
## Change directory aliases
alias h='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'


#grep aliases
alias ls='lsd --color=auto'
alias lh='lsd -a'
alias h="history | grep "
#neovim
alias vi='nvim'
alias vim='nvim'
alias svi='sudo nvim'
alias fb='nvim .'
#tmux
alias t='tmux attach || tmux new-session'
alias ta='tmux attach -t'
alias td='tmux detach'
alias tls='tmux ls'
# To have colors for ls and all grep commands such as grep, egrep and zgrep
export CLICOLOR=1
export LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.xml=00;31:'
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias grep='rg --color=auto'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
#this line is only valid if you choose to use spicetify.
export PATH=$PATH:~/.spicetify
