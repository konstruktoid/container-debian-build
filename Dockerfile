
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./buster-2001240922.txz /
ENV SHA256 c765aa8c165fd1d464002c99d43179952ef168ff1aeeec6c36e69bbc745f3513

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

