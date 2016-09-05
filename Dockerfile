
FROM scratch
ADD ./wheezy-1609052022.txz /
ENV SHA af7b6bc93af8bb299c847701ffeb7432eb27bbbc72c0db5de3f4c86799d059d5

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

