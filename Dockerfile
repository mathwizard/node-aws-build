FROM node:lts

MAINTAINER Michael Trezzi <michael.trezzi@zentity.com>

RUN echo "Building image" && \
    apt-get -y update && \
    apt-get install -y python3-pip && \
    pip3 install awscli && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
