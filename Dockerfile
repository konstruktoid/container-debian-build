
FROM scratch
ADD ./buster-1908270901.txz /
ENV SHA256 139fbcad6add6af65d6d4ec3848832532cec16f391c7f845b8455ea506024fa6

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

