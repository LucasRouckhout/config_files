#!/usr/bin/env bash

# Set the X root window which functions as a DWM statusbar.

RED='\033[0;31m'
NC='\033[0m' # No Color

while true; 
do
	xsetroot -name "[$(hostname -I | awk '{print $1}')]  [$(date +%H:%M:%S)]"
	sleep 1s
done;
