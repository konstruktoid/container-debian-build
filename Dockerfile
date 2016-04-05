
FROM scratch
ADD ./jessie-1604052121.txz /
ENV SHA 4076a92b2b730d3292f676b7844ee65e980c8f475ae2938468450c99975a5569

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

