
FROM scratch
ADD ./jessie-1604072014.txz /
ENV SHA d5aee181bb7f7269a6e7c3df355d9f20cf77f8c71e5332eef2dc9ecf230327f4

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

