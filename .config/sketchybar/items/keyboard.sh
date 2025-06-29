#!/bin/sh

sketchybar --add item keyboard right \
           --set keyboard update_freq=3 \
                         script="$PLUGIN_DIR/keyboard.sh" \
                         icon= \
                         icon.font="JetBrainsMonoNL Nerd Font:Bold:16.0" \
                         label="..." \
                         label.padding_right=8 \
                         background.padding_right=5

