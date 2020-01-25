
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./jessie-2001250045.txz /
ENV SHA256 b0edd27fef96c1701bba6f7e8b29cd5d1994042848729c24aac72655f3fe4403

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

