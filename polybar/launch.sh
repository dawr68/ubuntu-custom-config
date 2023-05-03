#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
m=$(xrandr --query | grep " connected" | cut -d" " -f1)
MONITORS=$m polybar main;
MONITORS=$m polybar secondary;

echo "Bars launched..."
