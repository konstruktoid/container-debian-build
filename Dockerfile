
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./stretch-2001250055.txz /
ENV SHA256 37451cc4d469017fc40e8cedbedb47e6b3017985d61515abf443fd4b1e4f8fb2

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

