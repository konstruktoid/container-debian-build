
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./stretch-2001240909.txz /
ENV SHA256 d51069d3460301bd6416dd65fe674cdf005c9aa79c2c4c808c68e96522ac8028

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

