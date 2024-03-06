#!/bin/bash

# Get the JSON output from i3-msg
i3_info=$(i3-msg -t get_workspaces)

# Extract the focused workspace from the JSON output
focused_workspace=$(echo "$i3_info" | jq '.[] | select(.focused == true)')

# Extract the width of the output (screen) containing the focused workspace
width=$(echo "$focused_workspace" | jq '.rect.width')

export TEST="hoi_new"

echo $width

