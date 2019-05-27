
FROM scratch
ADD ./stretch-1905272212.txz /
ENV SHA256 0eb11904627846346d38fc17d2bb72e6a48f8bd3f3f3051a15e3ad0503e6a0b4

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

