FROM debian:buster

RUN apt update && apt install -y --no-install-recommends python3-pip python3-setuptools mplayer && apt clean && rm -rf /var/lib/apt/lists/*
RUN pip3 install --no-cache-dir youtube-dl==2021.12.17

COPY ./playit.sh /home

ENTRYPOINT ["/home/playit.sh"]
