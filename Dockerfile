FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y \
    python3.13 \
    python3-pip\
    git

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]