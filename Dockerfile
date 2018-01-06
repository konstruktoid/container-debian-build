
FROM scratch
ADD ./stretch-1801061941.txz /
ENV SHA 550f34562a596e6acb22fbe7ffffa74dafa8e6659dc0756f50e9a4138f928895

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

