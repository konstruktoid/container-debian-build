
FROM scratch
ADD ./jessie-1905102051.txz /
ENV SHA256 dd41edb603fa6931cfa896ca6ee1103c9fd44ca3e367fa5f5806fb5970e10567

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

