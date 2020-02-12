
FROM scratch
LABEL maintainer='Thomas Sjögren <konstruktoid@users.noreply.github.com>'
ADD ./buster-2002121523.txz /
ENV SHA256 0ead24ecf646f75838689d73f071789615c2686ff78fbe1294bc1ca1eada78e3

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

