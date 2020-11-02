#!/usr/bin/env bash

# Set the X root window which functions as a DWM statusbar.
xsetroot -name "[Battery: $(cat /sys/class/power_supply/BAT0/capacity)%]  [$(ip route get 1.1.1.1 | grep -oP 'src \K\S+')]  [$(date)]"
