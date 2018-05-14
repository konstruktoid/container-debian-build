
FROM scratch
ADD ./wheezy-1805142110.txz /
ENV SHA 4324eb193e90bf799e54fae6befcb7e1c691523e4adf405ae9c8e7407ae248a9

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

