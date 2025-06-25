#!/bin/sh

sketchybar --add item front_app left \
           --set front_app       background.color=0xFF00FFFFFF \
                                 icon.color=0xFF001F30 \
                                 icon.font="sketchybar-app-font:Medium:16.0" \
                                 label.color=0xFFFFFFFF \
                                 script="$PLUGIN_DIR/front_app.sh"            \
           --subscribe front_app front_app_switched