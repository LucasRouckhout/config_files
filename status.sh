#!/usr/bin/env bash

# Set the X root window which functions as a DWM statusbar.
xsetroot -name "[$(hostname -I | awk '{print $1}')]  [$(date +%H:%M:%S)]"
