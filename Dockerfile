
FROM scratch
ADD ./wheezy-1612102116.txz /
ENV SHA 365fd548477f298e8bdfe5487f0f081981faf850db20c3b597e630d1e5203f60

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

