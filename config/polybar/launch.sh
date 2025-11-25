#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar windows &
polybar calendar &
polybar xwindow &
polybar tray &
polybar cpu-memory &
polybar batery-light-audio &

echo "Polybars iniciadas..."
