
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./buster-2009021532.txz /
ENV SHA256 5ce5b8f524c49fe7a7ecdd6a207b73e6ce6eb9efb5e26b8b75c44abdd07ba857

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

