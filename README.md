# PlayIt!

Simple music player. Just _PlayIt!_

## Concept

This docker image uses [mplayer](https://packages.debian.org/buster/mplayer) and [youtube-dl](https://github.com/ytdl-org/youtube-dl).
1. Stream audio from link using [youtube-dl](https://github.com/ytdl-org/youtube-dl) and store in cache
2. Play the cached audio using [mplayer](https://packages.debian.org/buster/mplayer)

## Usage

- Run command as below (where `$1` is url-link)
    ```
    docker run \
      -it --rm --device /dev/snd \
      playit:latest \
      $1
    ```
- Or simply run (where `$1` is url-link)
    ```
    runit.sh {url-link}
    ```

## Build

Simply run:
```
docker build -t playit .
```

## Use cases

- Play audio using Raspberry Pi
