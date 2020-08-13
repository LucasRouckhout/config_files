#!/usr/bin/env bash

# Set the X root window which functions as a DWM statusbar.
xsetroot -name "[Battery: $(cat /sys/class/power_supply/BAT0/capacity)%]  [$(hostname -I | awk '{print $1}')]  [$(date)]"
