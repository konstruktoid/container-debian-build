
FROM scratch
ADD ./stretch-1805142052.txz /
ENV SHA f12ad6cbb0a3f50ec77dd395fda5d478db2d5b338c3de87741dc065b72fce1ee

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

