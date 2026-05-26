FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    bash \
    coreutils \
    grep \
    gawk \
    tmux \
    asciinema \
    python3 \
    python3-pytest \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY server.log /app/server.log
