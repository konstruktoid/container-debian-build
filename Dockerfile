
FROM scratch
ADD ./jessie-1612102129.txz /
ENV SHA 2d4a11a639d7b26c4b40918f52881a7416c878c9bebdf7080f5db7ac561a54bd

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

