#!/usr/bin/env bash

# Put this file in /etc/profile.d/ to run it on startup
# Author: Lucas Rouckhout

# Echo out the IP address of this host
function ipFormat() {
    echo $(ip route get 1.1.1.1 | grep -oP 'src \K\S+')
}

# Return formatted date and time
function timeFormat() {
    echo $(date +"(%a %b %d) %H:%M %p")
}

# Set the X root window which functions as a DWM statusbar.
while true; do
    xsetroot -name "IP: $(ipFormat)  $(timeFormat)"
    sleep 1
done &
