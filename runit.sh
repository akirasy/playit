#!/usr/bin/env bash

docker run \
  -it --rm --device /dev/snd \
  playit:latest \
  $1
