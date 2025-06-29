#!/bin/sh

input_mode=$(defaults read com.apple.HIToolbox AppleCurrentKeyboardLayoutInputSourceID)

case "$input_mode" in
    "com.apple.keylayout.ABC") layout="ABC" ;;
    "com.apple.inputmethod.VietnameseSimpleTelex") layout="SimpleTelex 🇻🇳" ;;
    "com.apple.inputmethod.VietnameseTelex") layout="Telex 🇻🇳" ;;
    "com.apple.inputmethod.VietnameseIM") layout="VIQR 🇻🇳" ;;
    *) layout="??" ;;
esac

sketchybar --set keyboard label="$layout"

