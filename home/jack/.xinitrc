#!/bin/sh

if [ -d /etc/X11/app-defaults/xinitrc.d ] ; then
 for f in /etc/X11/app-defaults/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

feh --bg-fill /home/jack/Pictures/fish.png &

st &

exec dbus-launch --sh-syntax --exit-with-session /usr/local/bin/dwm
