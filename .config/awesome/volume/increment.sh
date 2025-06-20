#!/bin/bash

# TODO - get from argument
increment=5
limit=150

# Get the current volume
current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o '[0-9]*%' | tr -d '%' | head -n 1)

# Calculate the new volume
new_volume=$((current_volume + increment))

# Check if the new volume exceeds the limit
if [[ "$new_volume" -gt "$limit" ]]; then
  new_volume="$limit"
fi

# Set the new volume
pactl set-sink-volume @DEFAULT_SINK@ "${new_volume}%"
