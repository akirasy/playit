#!/bin/bash

youtube-dl \
    --quiet -f m4a -o - \
    $1 | \
    mplayer -volume 100 -cache 512 -
