
FROM scratch
ADD ./wheezy-1611022037.txz /
ENV SHA 2dc5f9d0c8201a5d7aa10ff4e6c9ad237a69fe0b6cc33593ab533f5735fb81b7

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

