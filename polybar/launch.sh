#!/usr/bin/env bash

# kill existing bars: killall -q polybar is ipc is not enabled for bars
polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar.log
polybar example -c /usr/share/doc/polybar/config 2>&1 | tee -a /tmp/polybar.log & disown
