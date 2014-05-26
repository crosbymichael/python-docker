FROM debian:jessie

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    libxml2-dev \
    python \
    build-essential \
    make \ 
    gcc \
    python-dev \
    locales \
    python-pip 

RUN dpkg-reconfigure locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8

ENV LC_ALL C.UTF-8
