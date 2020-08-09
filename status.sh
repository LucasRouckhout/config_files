#!/usr/bin/env bash

# Set the X root window which functions as a DWM statusbar.

while true; 
do
	xsetroot -name "$(date)"
	sleep 1s
done;
