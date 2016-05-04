
FROM scratch
ADD ./wheezy-1605042041.txz /
ENV SHA 3b061bf12d8fd51b22d1ab20dedf0f2078a265c18d4fa46a76518f3bb93b7b54

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

