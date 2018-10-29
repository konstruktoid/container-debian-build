
FROM scratch
ADD ./jessie-1810292136.txz /
ENV SHA256 e33f8ca9619ea285f0daf652f59f5b5c964c5167ae98be599af90e53d8f79ef6

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

