#!/bin/bash

# Get the current mute state
mute_state=$(pactl get-sink-mute @DEFAULT_SINK@)

# Toggle the mute state
if [[ "$mute_state" == "Mute: yes" ]]; then
  pactl set-sink-mute @DEFAULT_SINK@ false
else
  pactl set-sink-mute @DEFAULT_SINK@ true
fi
