#!/bin/bash

ICON=~/.config/i3/lock.png
TMPBG=/tmp/screen.png

scrot $TMPBG
convert $TMPBG -scale 10% -scale 1000% $TMPBG
if (( `xrandr | grep -c ' connected'` == 1 ));
then
	convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
	i3lock -t -i $TMPBG
else
	i3lock -t -u -i $TMPBG
fi
rm $TMPBG

