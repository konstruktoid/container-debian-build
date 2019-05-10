
FROM scratch
ADD ./stretch-1905102103.txz /
ENV SHA256 50fbae6774c24d58b19d200296094e246365d1dc44b5f18db8d280cfe564fb38

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && sh -c 'yes | apt-get --assume-yes upgrade'

