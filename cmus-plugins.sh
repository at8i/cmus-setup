#!/usr/bin/env bash

cmus-feh.sh "$*" &
cmus-artget.sh "$*" &

CM_ST=$(cmus-remote -Q 2>/dev/null | grep "playing")

if [[ -n "$CM_ST" ]]; then
    if pgrep -x terminator > /dev/null
         then
             :
         else
             terminator -x cmus-lyrics "$*"
    fi
fi
