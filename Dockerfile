
FROM scratch
ADD ./stretch-1709180955.txz /
ENV SHA 15b91940aea8f623d2c2d71cba5cf47c832f464d8db31a4cbd3518d1192ee081

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

