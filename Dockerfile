
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./buster-2004081016.txz /
ENV SHA256 abf19d035b4b9733d86baf50fd19fef260a8e327637b9da77ff4eb7d191b0bde

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

