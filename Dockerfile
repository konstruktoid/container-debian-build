
FROM scratch
ADD ./wheezy-1810292125.txz /
ENV SHA256 950a0723b0e649d53bac8c41bac27952681a65b33a063e536e40c73eb15340ae

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

