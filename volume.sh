#!/bin/bash

# Use pactl to get the volume information
volume_info=$(pactl list sinks | awk '/Volume: front-left/ {print $5; exit}' | tr -d '%')

echo "$volume_info%"
