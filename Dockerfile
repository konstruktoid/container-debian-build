
FROM scratch
ADD ./wheezy-1604072022.txz /
ENV SHA 0e79ff2f5d95ed8c8d6ad1b0d49cfeaac06c0d20d8716839199aff8de3a026ae

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

