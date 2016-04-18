
FROM scratch
ADD ./wheezy-1604182011.txz /
ENV SHA 28b1e3973f29eacb49b9804e8add8af234dc3a2a360de1e582daba078366dcb6

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

ONBUILD RUN apt-get update && apt-get -y upgrade

