#!/bin/sh
DIR=~/.config/vifm/lastdir

if [ -f $DIR ];
then
	rm $DIR
fi

/usr/bin/vifm "$@"

if [ -f $DIR ];
then
	cd `cat $DIR`
fi

