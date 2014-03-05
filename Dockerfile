FROM debian:jessie

RUN apt-get update && apt-get install -y \
    git \
    libxml2-dev \
    python \
    build-essential \
    make \ 
    gcc \
    python-dev \
    wget

RUN apt-get install -y locales && dpkg-reconfigure locales && locale-gen C.UTF-8 && /usr/sbin/update-locale LANG=C.UTF-8
ENV LC_ALL C.UTF-8

RUN wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py && python ez_setup.py
RUN wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py && python get-pip.py
