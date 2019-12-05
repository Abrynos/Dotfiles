#!/bin/sh
DIR=~/.config/vifm/lastdir

if [ -f $DIR ];
then
	cat $DIR
else
	echo $HOME
fi

