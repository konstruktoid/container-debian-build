FROM konstruktoid/debian

ENV BUILDAREA /opt/buildarea

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install debootstrap openssl xz-utils && \
  mkdir -p $BUILDAREA

COPY ./buildeb.sh /buildeb.sh

WORKDIR /
VOLUME $BUILDAREA

ENTRYPOINT ["/buildeb.sh"]
CMD []
