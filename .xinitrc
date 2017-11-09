#!/bin/sh
# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xset s off -b -dpms &
setxkbmap -option caps:escape &
sh ~/.fehbg &
xrdb -merge ~/.Xresources &
pcmanfm -d &
compton &
#tint2 &
#cbatticon &
#xcompmgr &
#exec openbox-session
exec i3
