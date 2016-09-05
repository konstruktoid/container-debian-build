
FROM scratch
ADD ./jessie-1609051952.txz /
ENV SHA e6a94ccd22a767e3c2d0e16d41377c75d9a074b1064feedc6ca56f4702840e50

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

