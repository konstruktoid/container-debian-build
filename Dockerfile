
FROM scratch
ADD ./wheezy-1606122049.txz /
ENV SHA 29195d1dfcb6f9a823e762bed1a2c82a70fde92a67355f8c14f58e8ec035fe77

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

