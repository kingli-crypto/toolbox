FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
        aufs-tools \
        automake \
        build-essential \
        curl \
        dpkg-sig \
        python \
        busybox \
        telnet \
        dnsutils \
        jq \
    && rm -rf /var/lib/apt/lists/*

RUN curl -o /usr/bin/assert.sh https://raw.github.com/lehmannro/assert.sh/v1.1/assert.sh \
    && chmod + /usr/bin/assert.sh
