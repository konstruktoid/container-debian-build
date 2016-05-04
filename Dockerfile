
FROM scratch
ADD ./jessie-1605042025.txz /
ENV SHA f43c5bc892297629fa56a65ab10d64cf023614ad1ed126505dfbd6376f5a3f69

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

