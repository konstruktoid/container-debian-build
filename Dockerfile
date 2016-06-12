
FROM scratch
ADD ./jessie-1606122102.txz /
ENV SHA e0e926cd2d5d390d4bee7b30430c4af8dbf3efabf84e44db05a71d383ac4cce4

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

