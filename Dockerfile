
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./buster-2001250030.txz /
ENV SHA256 5d59c9c99e7cbe2645b68f34e37f21697aafe757d4e30e37270d1aa7ae630443

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

