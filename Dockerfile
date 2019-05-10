
FROM scratch
ADD ./buster-1905102124.txz /
ENV SHA256 7d1a8ebaa6b62352b6bb5c04dcbc6f94fbe76f3e3e817031816bb0df1a16ce03

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

