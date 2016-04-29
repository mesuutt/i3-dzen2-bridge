#!/bin/bash



# I am displaying i3dzen2 status at bottom of screen 
# and py3status at top of screen. Both using i3status
# So start another i3status instance instead exit.

#running=`ps -ef | grep i3status | grep -v grep | wc -l`
#[[ $running == 1 ]] && exit 1


SELF_PATH=`readlink -f $0`
PROJECT_PATH=`dirname "$SELF_PATH"`

cd "$PROJECT_PATH"

sleep 3
i3status | ./i3-dzen-bridge.py | dzen2 -y -1 -fn "ubuntu mono" -ta r -dock &

exit 0

