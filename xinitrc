#!/bin/sh
# start some nice programs

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

DEFAULT_SESSION='i3 --shmlog-size 0'

# merge in defaults and keymaps
if [ -f $sysresources ]; then
	xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
	xmodmap $sysmodmap
fi

if [ -f $userresources ]; then
	xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
	xmodmap $usermodmap
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xset s off -b -dpms &
sh ~/.fehbg &
pcmanfm -d &
setxkbmap -option compose:ralt
xmodmap ~/.Xmodmap
exec i3

