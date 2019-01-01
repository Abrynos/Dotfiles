#!/bin/bash

# Used to create a .png from the .svg that has the right size to overlay perfectly with i3lock's animation when typing the password.
# On a 1600x900px monitor the perfect argument for this is "17.5%"

ORIGINAL=~/.config/i3/lock.svg
OUTPUT=~/.config/i3/lock.png

inkscape --export-png=$OUTPUT --export-dpi=200 --export-background-opacity=0 --without-gui $ORIGINAL
convert $OUTPUT -scale $1 $OUTPUT

