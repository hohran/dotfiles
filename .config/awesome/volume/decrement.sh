#!/bin/bash

# TODO - get from argument
decrement=5

# Set the new volume
pactl set-sink-volume @DEFAULT_SINK@ "-${decrement}%"
