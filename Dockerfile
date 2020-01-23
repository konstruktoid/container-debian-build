
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./stretch-2001231136.txz /
ENV SHA256 c6b04b77c557fedfcc7549fd08e471df2ba07e73637d1bf64a0377f737236c63

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

