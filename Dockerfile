
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./stretch-2001271047.txz /
ENV SHA256 7984bdbc34181d43b1a5d557006b5e9d835d3977ba10e0b68425ce11aa332306

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

