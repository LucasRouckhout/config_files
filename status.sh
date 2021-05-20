#!/usr/bin/env bash

# Set the X root window which functions as a DWM statusbar.
xsetroot -name "[$(ip route get 1.1.1.1 | grep -oP 'src \K\S+')]  [$(date)]"
