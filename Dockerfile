
FROM scratch
ADD ./stretch-1810300920.txz /
ENV SHA256 a2aa8d1d240b9f8b7f6a08ed7fd6545bc33e4d2fbb3dbaa24916ae62d737c6a6

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

