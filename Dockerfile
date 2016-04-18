
FROM scratch
ADD ./jessie-1604182020.txz /
ENV SHA 5d22f86f93df909b2a9c3da9bd1d75a4fcd861f96995acf08227afd86a401e0f

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

