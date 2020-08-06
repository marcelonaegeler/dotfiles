#!/bin/sh
setxkbmap -option caps:escape
xflux -l -26.460377

VAR=$(xrandr | grep "670mm x 280mm")
if [ -n "$VAR" ]; then
  /bin/sh ~/.screenlayout/lg-ultrawide.sh
else
  /bin/sh ~/.screenlayout/default.sh
fi

