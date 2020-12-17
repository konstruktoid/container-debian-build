
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./buster-2012172159.txz /
ENV SHA256 cc76e37ae89be37f4c2fb2802f5cc18518b0335f9fce3cb3ab7f2d4477cb4dd0

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

