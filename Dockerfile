
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./buster-2002251319.txz /
ENV SHA256 0945dff3fb4ad8cc006a486d87a65f20bfa363de98b4f4148359602134b8ce07

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

