
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./buster-2105200937.txz /
ENV SHA256 eafa6b501d34070522c1a2df8bc3c52f4979aa406783806650c7eede4b26e8e9

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

