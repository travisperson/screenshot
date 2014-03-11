#!/bin/sh
# A really simple screenshot script to capture an image
# of a selected window.
# I couldn't find a really simple script to I wrote this
# one so I could have something

# A few options to setup
DIR=~/
EXT=png

#########################################################

WINID_LINE=`xwininfo | grep "Window id"`
WINID=`echo $WINID_LINE | grep -P '0x[0-9a-z]*' -o`
import -window $WINID $DIR/screenshot-$(date +"%s").$EXT 
