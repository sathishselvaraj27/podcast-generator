FROM ubuntu:latest

RUN apt-get install && apt-get update -y \
    python3.13 \
    python3-pip\
    git

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]