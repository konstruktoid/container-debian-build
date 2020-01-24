
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./jessie-2001240940.txz /
ENV SHA256 07f03cd4e1b7cdc464811a41b302d23805e904303977d931abcf39eeeb93a0e6

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

