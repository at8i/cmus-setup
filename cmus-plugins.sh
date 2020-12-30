#!/bin/sh
cmus-feh.sh "$*" &
if pgrep -x terminator > /dev/null
then
    :
else
    terminator -x cmus-lyrics "$*" &
fi
