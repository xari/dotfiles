#!/bin/sh

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

setxkbmap -variant colemak; xset r rate 300 50; exec dwm
