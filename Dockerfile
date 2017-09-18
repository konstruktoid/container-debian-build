
FROM scratch
ADD ./jessie-1709180948.txz /
ENV SHA e2e5ed97266feeff60427a5e470dac5dbe72853ad189be0a3e9f05139f777aa0

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

