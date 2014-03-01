FROM debian:jessie

RUN apt-get update
RUN apt-get install -y locales

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN locale-gen en_US.UTF-8 && dpkg-reconfigure locales

RUN apt-get install -y \
    openssh-server \
    git-core \
    libxml2-dev \
    python \
    build-essential \
    make \ 
    gcc \
    python-dev \
    wget

RUN wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py && python ez_setup.py
RUN wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py && python get-pip.py
