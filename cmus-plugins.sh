#!/bin/sh
cmus-feh.sh "$*" &
cmus-artget.sh "$*" &
if pgrep -x terminator > /dev/null
then
    :
else
    terminator -x cmus-lyrics "$*" &
fi
