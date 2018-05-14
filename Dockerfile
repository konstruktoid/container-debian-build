
FROM scratch
ADD ./jessie-1805142117.txz /
ENV SHA 92dad66a9b8563bfb3dcb792ee7d5f143a793ef4260f498703a9ddc147f0278f

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

