
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./buster-2007032117.txz /
ENV SHA256 e5196b827de765e9787033f1f5622d50999a48c0fe5234c5db2150da9bd3a5f9

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

