
FROM scratch
ADD ./wheezy-1605151706.txz /
ENV SHA 08704e1b7ad7131e79457cd54305ac89ff65b083fda32a2d69a99671b31cdf70

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

